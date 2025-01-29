; Just some branches
;
TEST:
				LDA #$42
				CMP #$36
				BCC	TEST1
				BEQ TEST2
				BNE TEST3

TEST1:
				NOP
				NOP
				ADC #$64
				BNE TEST3

TEST2:	
				SBC #$42
				BEQ TEST1

TEST3:	
				NOP
