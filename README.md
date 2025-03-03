# Trig-Design-with-Chisel-HCL
Trig Design with Chisel HCL

This design is a Chisel-based implementation of a CORDIC (COordinate Rotation DIgital Computer) engine that computes sine, cosine, and arctangent values following the IEEE 754 standard. It includes the following configurable parameters:
-	Bitwidth (bw): Selectable bit widths of 16, 32, 64, or 128 bits.
-	Pipeline Depth (pipeline_depth): Specifies the number of registers between each iteration. Supported configurations include 1 round per register, 2 rounds per register, 4 rounds per register, 8 rounds per register, and 1 register for the total number of rounds.
-	Rounds (rounds): Determines the total number of iterations performed by the CORDIC algorithm. The maximum number of rounds is equal to the selected bit width.
