`timescale 1ns / 1ps
//Source: http://www.bigmessowires.com/2009/06/21/fpga-pong/
//modified to run on the new CRT driver
//and 100MHz system clock
//ECE433 Fall 2021
// -----------------------------------------------
// updates the ball and paddle positions, and
// determines the output video image
// -----------------------------------------------
module game2021fall(
input Reset, clk25, rota, rotb,
input [9:0] xpos, ypos,
output speaker,
output [3:0] red, green, blue);

wire endOfFrame = (xpos == 0 && ypos == 480);

wire gameRst = (ballX == 0 && ballY == 0) || (missTimer!=0);
		
// paddle movement		
reg [8:0] paddlePosition;
reg [2:0] quadAr, quadBr;
always @(posedge clk25) quadAr <= {quadAr[1:0], rota};
always @(posedge clk25) quadBr <= {quadBr[1:0], rotb};

always @(posedge clk25)
if(quadAr[2] ^ quadAr[1] ^ quadBr[2] ^ quadBr[1])
begin
	if(quadAr[2] ^ quadBr[1]) begin
		if(paddlePosition < 508)        // make sure the value doesn't overflow
			paddlePosition <= paddlePosition + 3'd4;
	end
	else begin
		if(paddlePosition > 2'd3)        // make sure the value doesn't underflow
			paddlePosition <= paddlePosition - 3'd4;
	end
end

//paddle2
reg [9:0] paddle2pos;
reg paddle2bounce;
reg paddle2dir;

always @(posedge clk25) begin
    if(endOfFrame) begin
        if(gameRst) begin
            paddle2pos <= 260;
        end
        else begin
            if(paddle2dir ^ paddle2bounce) paddle2pos <= paddle2pos + 2;
            else paddle2pos <= paddle2pos - 2;
        end
    end
end

reg [10:0] randBall;

always @(posedge clk25) begin
    if(randBall >= 640-4-7-7)
        randBall <= 4 + 7;
    else
        randBall <= randBall + 7;
end
		
// ball movement	
reg [9:0] ballX;
reg [8:0] ballY;
reg ballXdir, ballYdir;
reg bounceX, bounceY;
	
	
always @(posedge clk25) begin
	if (endOfFrame) begin // update ball position at end of each frame
		if (gameRst) begin // cheesy reset handling, assumes initial value of 0
			ballX <= randBall;
			ballY <= 300;
		end
		else begin
			if (ballXdir ^ bounceX) 
				ballX <= ballX + 2'd1;
			else 
				ballX <= ballX - 2'd1;	

			if (ballYdir ^ bounceY) 
				ballY <= ballY + 2'd1;
			else
				ballY <= ballY - 2'd1;	
		end
	end	
end		
		
// pixel color	
reg [5:0] missTimer;	
wire visible = (xpos < 640 && ypos < 480);
wire top = (visible && ypos <= 4);
wire bottom = (visible && ypos >= 476);
wire left = (visible && xpos <= 4);
wire right = (visible && xpos >= 636);
wire border = (visible && (left || right || top));
wire paddle = (xpos >= paddlePosition+4 && xpos <= paddlePosition+124 && ypos >= 440 && ypos <= 447);
wire paddle2 = (xpos >= paddle2pos && xpos <= paddle2pos+120 && ypos >= 220 && ypos <= 227);
wire ball = (xpos >= ballX && xpos <= ballX+7 && ypos >= ballY && ypos <= ballY+7);
wire background = (visible && !(border || paddle || paddle2 || ball));
wire checkerboard = (xpos[5] ^ ypos[5]);
wire missed = visible && missTimer != 0;

assign red   = { missed || border || paddle || paddle2, 3'b000};
assign green = { !missed && (border || paddle || paddle2 || ball), 3'b000};
assign blue  = { !missed && (border || ball), background && checkerboard, background && checkerboard, 1'b0}; 

always @(posedge clk25) begin
    if(!endOfFrame) begin
        if(paddle2pos < 3 || paddle2pos >= 640-3-120)
            paddle2bounce <= 1;
    end
    else begin
        if(gameRst) begin
            paddle2bounce <= 0;
            paddle2dir <= 0;
        end
        else begin
            if(paddle2bounce) 
                paddle2dir = ~paddle2dir;
            paddle2bounce <= 0;
        end
    end
end


reg paddleHit;

// ball collision	
always @(posedge clk25) begin
	if (!endOfFrame) begin
		if (ball && (left || right))
			bounceX <= 1;
		if (ball && (top || bottom || (paddle && ballYdir) || paddle2))begin
			bounceY <= 1;
			if(paddle&&ballYdir)
			 paddleHit <= 1;
        end
		if (ball && bottom)
			missTimer <= 63;
	end
	else begin
		if (gameRst) begin // cheesy reset handling, assumes initial value of 0
			ballXdir <= 1;
			ballYdir <= 0;
			bounceX <= 0;
			bounceY <= 0;
			paddleHit <= 0;
		end 
		else begin
			if (bounceX)
				ballXdir <= ~ballXdir;
			if (bounceY)
				ballYdir <= ~ballYdir;			
			bounceX <= 0;
			bounceY <= 0;
			paddleHit <= 0;
		end
		if (missTimer != 0)
			missTimer <= missTimer - 1'b1;
	end
end

reg [1:0] notePlay;
wire lowNote = notePlay[0] && ~notePlay[1];
wire medNote = ~notePlay[0] && notePlay[1];
wire highNote = notePlay[0] && notePlay[1];
reg [31:0] noteTime;

ThreeMusicNotes note(lowNote, medNote, highNote, speaker, Reset, clk25);

always @(posedge clk25) begin
    if(endOfFrame) begin
        if(noteTime!=0) begin 
            noteTime <= noteTime -1;
            notePlay <= notePlay;
        end
        else begin 
            notePlay <= 0;
            noteTime <= noteTime;
        end
    end
    else begin
        if(gameRst) begin
            noteTime <= 1;
            notePlay <= 31;
        end
        else if(bounceX)
            notePlay <= 2;
        else if(bounceY)
            notePlay <= 3;
        else notePlay <= notePlay;
        if(bounceY || bounceX)
            noteTime <= 10;
        else noteTime  <= noteTime;
    end
end
		
endmodule
