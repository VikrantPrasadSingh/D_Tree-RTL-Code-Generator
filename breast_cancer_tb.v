module breast_cancer_tb;

    reg [7:0] mean_radius;
    reg [7:0] mean_texture;
    reg [7:0] mean_perimeter;
    reg [7:0] mean_area;
    reg [7:0] mean_smoothness;
    reg [7:0] mean_compactness;
    reg [7:0] mean_concavity;
    reg [7:0] mean_concave_points;
    reg [7:0] mean_symmetry;
    reg [7:0] mean_fractal_dimension;
    reg [7:0] radius_error;
    reg [7:0] texture_error;
    reg [7:0] perimeter_error;
    reg [7:0] area_error;
    reg [7:0] smoothness_error;
    reg [7:0] compactness_error;
    reg [7:0] concavity_error;
    reg [7:0] concave_points_error;
    reg [7:0] symmetry_error;
    reg [7:0] fractal_dimension_error;
    reg [7:0] worst_radius;
    reg [7:0] worst_texture;
    reg [7:0] worst_perimeter;
    reg [7:0] worst_area;
    reg [7:0] worst_smoothness;
    reg [7:0] worst_compactness;
    reg [7:0] worst_concavity;
    reg [7:0] worst_concave_points;
    reg [7:0] worst_symmetry;
    reg [7:0] worst_fractal_dimension;
    reg expected;
    wire predicted_class;
    integer pass_count;

    breast_cancer_dt uut (
        .mean_radius(mean_radius),
        .mean_texture(mean_texture),
        .mean_perimeter(mean_perimeter),
        .mean_area(mean_area),
        .mean_smoothness(mean_smoothness),
        .mean_compactness(mean_compactness),
        .mean_concavity(mean_concavity),
        .mean_concave_points(mean_concave_points),
        .mean_symmetry(mean_symmetry),
        .mean_fractal_dimension(mean_fractal_dimension),
        .radius_error(radius_error),
        .texture_error(texture_error),
        .perimeter_error(perimeter_error),
        .area_error(area_error),
        .smoothness_error(smoothness_error),
        .compactness_error(compactness_error),
        .concavity_error(concavity_error),
        .concave_points_error(concave_points_error),
        .symmetry_error(symmetry_error),
        .fractal_dimension_error(fractal_dimension_error),
        .worst_radius(worst_radius),
        .worst_texture(worst_texture),
        .worst_perimeter(worst_perimeter),
        .worst_area(worst_area),
        .worst_smoothness(worst_smoothness),
        .worst_compactness(worst_compactness),
        .worst_concavity(worst_concavity),
        .worst_concave_points(worst_concave_points),
        .worst_symmetry(worst_symmetry),
        .worst_fractal_dimension(worst_fractal_dimension),
        .predicted_class(predicted_class)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, breast_cancer_tb);
        pass_count = 0;

        // ── Test 0 ──────────────────────────────
        mean_radius=8'd60; mean_texture=8'd77; mean_perimeter=8'd60; mean_area=8'd34; mean_smoothness=8'd108; mean_compactness=8'd75; mean_concavity=8'd48; mean_concave_points=8'd48; mean_symmetry=8'd103; mean_fractal_dimension=8'd74; radius_error=8'd26; texture_error=8'd39; perimeter_error=8'd21; area_error=8'd11; smoothness_error=8'd45; compactness_error=8'd32; concavity_error=8'd17; concave_points_error=8'd50; symmetry_error=8'd47; fractal_dimension_error=8'd24; worst_radius=8'd59; worst_texture=8'd86; worst_perimeter=8'd54; worst_area=8'd29; worst_smoothness=8'd124; worst_compactness=8'd59; worst_concavity=8'd54; worst_concave_points=8'd89; worst_symmetry=8'd73; worst_fractal_dimension=8'd70;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 0 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 0 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 1 ──────────────────────────────
        mean_radius=8'd140; mean_texture=8'd100; mean_perimeter=8'd137; mean_area=8'd105; mean_smoothness=8'd86; mean_compactness=8'd73; mean_concavity=8'd65; mean_concave_points=8'd101; mean_symmetry=8'd57; mean_fractal_dimension=8'd25; radius_error=8'd63; texture_error=8'd25; perimeter_error=8'd57; area_error=8'd43; smoothness_error=8'd24; compactness_error=8'd27; concavity_error=8'd15; concave_points_error=8'd66; symmetry_error=8'd28; fractal_dimension_error=8'd7; worst_radius=8'd151; worst_texture=8'd99; worst_perimeter=8'd144; worst_area=8'd104; worst_smoothness=8'd83; worst_compactness=8'd58; worst_concavity=8'd55; worst_concave_points=8'd157; worst_symmetry=8'd50; worst_fractal_dimension=8'd23;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 1 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 1 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 2 ──────────────────────────────
        mean_radius=8'd97; mean_texture=8'd84; mean_perimeter=8'd98; mean_area=8'd63; mean_smoothness=8'd130; mean_compactness=8'd90; mean_concavity=8'd88; mean_concave_points=8'd102; mean_symmetry=8'd104; mean_fractal_dimension=8'd43; radius_error=8'd34; texture_error=8'd24; perimeter_error=8'd28; area_error=8'd20; smoothness_error=8'd39; compactness_error=8'd24; concavity_error=8'd18; concave_points_error=8'd53; symmetry_error=8'd29; fractal_dimension_error=8'd14; worst_radius=8'd99; worst_texture=8'd95; worst_perimeter=8'd91; worst_area=8'd59; worst_smoothness=8'd144; worst_compactness=8'd59; worst_concavity=8'd77; worst_concave_points=8'd133; worst_symmetry=8'd64; worst_fractal_dimension=8'd54;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 2 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 2 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 3 ──────────────────────────────
        mean_radius=8'd59; mean_texture=8'd69; mean_perimeter=8'd61; mean_area=8'd33; mean_smoothness=8'd121; mean_compactness=8'd98; mean_concavity=8'd46; mean_concave_points=8'd35; mean_symmetry=8'd88; mean_fractal_dimension=8'd113; radius_error=8'd6; texture_error=8'd62; perimeter_error=8'd17; area_error=8'd4; smoothness_error=8'd72; compactness_error=8'd59; concavity_error=8'd31; concave_points_error=8'd56; symmetry_error=8'd67; fractal_dimension_error=8'd45; worst_radius=8'd39; worst_texture=8'd74; worst_perimeter=8'd46; worst_area=8'd18; worst_smoothness=8'd128; worst_compactness=8'd66; worst_concavity=8'd49; worst_concave_points=8'd65; worst_symmetry=8'd50; worst_fractal_dimension=8'd83;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 3 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 3 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 4 ──────────────────────────────
        mean_radius=8'd48; mean_texture=8'd41; mean_perimeter=8'd48; mean_area=8'd25; mean_smoothness=8'd109; mean_compactness=8'd81; mean_concavity=8'd40; mean_concave_points=8'd33; mean_symmetry=8'd89; mean_fractal_dimension=8'd96; radius_error=8'd15; texture_error=8'd79; perimeter_error=8'd10; area_error=8'd7; smoothness_error=8'd90; compactness_error=8'd74; concavity_error=8'd36; concave_points_error=8'd72; symmetry_error=8'd50; fractal_dimension_error=8'd41; worst_radius=8'd33; worst_texture=8'd52; worst_perimeter=8'd31; worst_area=8'd15; worst_smoothness=8'd110; worst_compactness=8'd52; worst_concavity=8'd37; worst_concave_points=8'd61; worst_symmetry=8'd38; worst_fractal_dimension=8'd57;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 4 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 4 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 5 ──────────────────────────────
        mean_radius=8'd161; mean_texture=8'd169; mean_perimeter=8'd167; mean_area=8'd120; mean_smoothness=8'd150; mean_compactness=8'd225; mean_concavity=8'd210; mean_concave_points=8'd193; mean_symmetry=8'd167; mean_fractal_dimension=8'd108; radius_error=8'd57; texture_error=8'd70; perimeter_error=8'd60; area_error=8'd38; smoothness_error=8'd42; compactness_error=8'd114; concavity_error=8'd46; concave_points_error=8'd80; symmetry_error=8'd73; fractal_dimension_error=8'd47; worst_radius=8'd159; worst_texture=8'd186; worst_perimeter=8'd169; worst_area=8'd101; worst_smoothness=8'd163; worst_compactness=8'd235; worst_concavity=8'd191; worst_concave_points=8'd232; worst_symmetry=8'd127; worst_fractal_dimension=8'd149;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 5 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 5 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 6 ──────────────────────────────
        mean_radius=8'd179; mean_texture=8'd105; mean_perimeter=8'd180; mean_area=8'd144; mean_smoothness=8'd124; mean_compactness=8'd154; mean_concavity=8'd146; mean_concave_points=8'd190; mean_symmetry=8'd89; mean_fractal_dimension=8'd61; radius_error=8'd83; texture_error=8'd19; perimeter_error=8'd82; area_error=8'd59; smoothness_error=8'd20; compactness_error=8'd50; concavity_error=8'd23; concave_points_error=8'd71; symmetry_error=8'd35; fractal_dimension_error=8'd26; worst_radius=8'd177; worst_texture=8'd94; worst_perimeter=8'd182; worst_area=8'd127; worst_smoothness=8'd101; worst_compactness=8'd101; worst_concavity=8'd97; worst_concave_points=8'd213; worst_symmetry=8'd59; worst_fractal_dimension=8'd66;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 6 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 6 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 7 ──────────────────────────────
        mean_radius=8'd123; mean_texture=8'd46; mean_perimeter=8'd122; mean_area=8'd86; mean_smoothness=8'd106; mean_compactness=8'd84; mean_concavity=8'd59; mean_concave_points=8'd101; mean_symmetry=8'd78; mean_fractal_dimension=8'd62; radius_error=8'd45; texture_error=8'd26; perimeter_error=8'd47; area_error=8'd26; smoothness_error=8'd34; compactness_error=8'd54; concavity_error=8'd22; concave_points_error=8'd65; symmetry_error=8'd54; fractal_dimension_error=8'd25; worst_radius=8'd106; worst_texture=8'd51; worst_perimeter=8'd104; worst_area=8'd63; worst_smoothness=8'd94; worst_compactness=8'd71; worst_concavity=8'd51; worst_concave_points=8'd128; worst_symmetry=8'd60; worst_fractal_dimension=8'd52;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 7 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 7 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 8 ──────────────────────────────
        mean_radius=8'd71; mean_texture=8'd53; mean_perimeter=8'd70; mean_area=8'd38; mean_smoothness=8'd127; mean_compactness=8'd117; mean_concavity=8'd70; mean_concave_points=8'd89; mean_symmetry=8'd106; mean_fractal_dimension=8'd102; radius_error=8'd16; texture_error=8'd37; perimeter_error=8'd9; area_error=8'd3; smoothness_error=8'd44; compactness_error=8'd64; concavity_error=8'd26; concave_points_error=8'd67; symmetry_error=8'd64; fractal_dimension_error=8'd33; worst_radius=8'd64; worst_texture=8'd76; worst_perimeter=8'd55; worst_area=8'd25; worst_smoothness=8'd143; worst_compactness=8'd127; worst_concavity=8'd99; worst_concave_points=8'd150; worst_symmetry=8'd99; worst_fractal_dimension=8'd101;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 8 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 8 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 9 ──────────────────────────────
        mean_radius=8'd78; mean_texture=8'd60; mean_perimeter=8'd74; mean_area=8'd47; mean_smoothness=8'd36; mean_compactness=8'd30; mean_concavity=8'd13; mean_concave_points=8'd17; mean_symmetry=8'd88; mean_fractal_dimension=8'd29; radius_error=8'd4; texture_error=8'd12; perimeter_error=8'd8; area_error=8'd3; smoothness_error=8'd14; compactness_error=8'd21; concavity_error=8'd6; concave_points_error=8'd23; symmetry_error=8'd25; fractal_dimension_error=8'd11; worst_radius=8'd60; worst_texture=8'd66; worst_perimeter=8'd61; worst_area=8'd31; worst_smoothness=8'd39; worst_compactness=8'd49; worst_concavity=8'd28; worst_concave_points=8'd55; worst_symmetry=8'd56; worst_fractal_dimension=8'd47;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 9 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 9 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 10 ──────────────────────────────
        mean_radius=8'd69; mean_texture=8'd134; mean_perimeter=8'd66; mean_area=8'd40; mean_smoothness=8'd81; mean_compactness=8'd29; mean_concavity=8'd17; mean_concave_points=8'd26; mean_symmetry=8'd62; mean_fractal_dimension=8'd32; radius_error=8'd9; texture_error=8'd56; perimeter_error=8'd7; area_error=8'd5; smoothness_error=8'd35; compactness_error=8'd11; concavity_error=8'd10; concave_points_error=8'd31; symmetry_error=8'd27; fractal_dimension_error=8'd8; worst_radius=8'd53; worst_texture=8'd151; worst_perimeter=8'd48; worst_area=8'd26; worst_smoothness=8'd100; worst_compactness=8'd22; worst_concavity=8'd28; worst_concave_points=8'd53; worst_symmetry=8'd44; worst_fractal_dimension=8'd28;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 10 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 10 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 11 ──────────────────────────────
        mean_radius=8'd114; mean_texture=8'd78; mean_perimeter=8'd111; mean_area=8'd78; mean_smoothness=8'd83; mean_compactness=8'd63; mean_concavity=8'd50; mean_concave_points=8'd83; mean_symmetry=8'd99; mean_fractal_dimension=8'd29; radius_error=8'd45; texture_error=8'd58; perimeter_error=8'd41; area_error=8'd29; smoothness_error=8'd38; compactness_error=8'd43; concavity_error=8'd17; concave_points_error=8'd77; symmetry_error=8'd62; fractal_dimension_error=8'd23; worst_radius=8'd106; worst_texture=8'd97; worst_perimeter=8'd99; worst_area=8'd66; worst_smoothness=8'd79; worst_compactness=8'd52; worst_concavity=8'd47; worst_concave_points=8'd129; worst_symmetry=8'd63; worst_fractal_dimension=8'd37;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 11 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 11 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 12 ──────────────────────────────
        mean_radius=8'd91; mean_texture=8'd87; mean_perimeter=8'd86; mean_area=8'd57; mean_smoothness=8'd73; mean_compactness=8'd30; mean_concavity=8'd12; mean_concave_points=8'd25; mean_symmetry=8'd47; mean_fractal_dimension=8'd15; radius_error=8'd7; texture_error=8'd40; perimeter_error=8'd6; area_error=8'd5; smoothness_error=8'd17; compactness_error=8'd11; concavity_error=8'd5; concave_points_error=8'd31; symmetry_error=8'd54; fractal_dimension_error=8'd6; worst_radius=8'd68; worst_texture=8'd94; worst_perimeter=8'd62; worst_area=8'd35; worst_smoothness=8'd58; worst_compactness=8'd20; worst_concavity=8'd16; worst_concave_points=8'd50; worst_symmetry=8'd54; worst_fractal_dimension=8'd13;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 12 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 12 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 13 ──────────────────────────────
        mean_radius=8'd107; mean_texture=8'd105; mean_perimeter=8'd108; mean_area=8'd72; mean_smoothness=8'd147; mean_compactness=8'd95; mean_concavity=8'd107; mean_concave_points=8'd101; mean_symmetry=8'd96; mean_fractal_dimension=8'd82; radius_error=8'd42; texture_error=8'd62; perimeter_error=8'd26; area_error=8'd24; smoothness_error=8'd77; compactness_error=8'd68; concavity_error=8'd38; concave_points_error=8'd57; symmetry_error=8'd154; fractal_dimension_error=8'd47; worst_radius=8'd84; worst_texture=8'd90; worst_perimeter=8'd77; worst_area=8'd48; worst_smoothness=8'd124; worst_compactness=8'd52; worst_concavity=8'd68; worst_concave_points=8'd92; worst_symmetry=8'd59; worst_fractal_dimension=8'd53;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 13 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 13 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 14 ──────────────────────────────
        mean_radius=8'd58; mean_texture=8'd22; mean_perimeter=8'd56; mean_area=8'd33; mean_smoothness=8'd86; mean_compactness=8'd38; mean_concavity=8'd18; mean_concave_points=8'd34; mean_symmetry=8'd71; mean_fractal_dimension=8'd44; radius_error=8'd0; texture_error=8'd8; perimeter_error=8'd0; area_error=8'd1; smoothness_error=8'd17; compactness_error=8'd13; concavity_error=8'd6; concave_points_error=8'd28; symmetry_error=8'd16; fractal_dimension_error=8'd4; worst_radius=8'd46; worst_texture=8'd49; worst_perimeter=8'd42; worst_area=8'd22; worst_smoothness=8'd101; worst_compactness=8'd50; worst_concavity=8'd36; worst_concave_points=8'd94; worst_symmetry=8'd78; worst_fractal_dimension=8'd45;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 14 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 14 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 15 ──────────────────────────────
        mean_radius=8'd142; mean_texture=8'd143; mean_perimeter=8'd147; mean_area=8'd105; mean_smoothness=8'd159; mean_compactness=8'd139; mean_concavity=8'd116; mean_concave_points=8'd186; mean_symmetry=8'd64; mean_fractal_dimension=8'd120; radius_error=8'd38; texture_error=8'd144; perimeter_error=8'd61; area_error=8'd29; smoothness_error=8'd51; compactness_error=8'd112; concavity_error=8'd14; concave_points_error=8'd89; symmetry_error=8'd108; fractal_dimension_error=8'd84; worst_radius=8'd109; worst_texture=8'd141; worst_perimeter=8'd113; worst_area=8'd68; worst_smoothness=8'd118; worst_compactness=8'd71; worst_concavity=8'd50; worst_concave_points=8'd161; worst_symmetry=8'd37; worst_fractal_dimension=8'd80;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 15 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 15 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 16 ──────────────────────────────
        mean_radius=8'd89; mean_texture=8'd43; mean_perimeter=8'd85; mean_area=8'd56; mean_smoothness=8'd74; mean_compactness=8'd27; mean_concavity=8'd20; mean_concave_points=8'd32; mean_symmetry=8'd67; mean_fractal_dimension=8'd19; radius_error=8'd10; texture_error=8'd15; perimeter_error=8'd11; area_error=8'd7; smoothness_error=8'd43; compactness_error=8'd19; concavity_error=8'd10; concave_points_error=8'd51; symmetry_error=8'd38; fractal_dimension_error=8'd8; worst_radius=8'd65; worst_texture=8'd38; worst_perimeter=8'd61; worst_area=8'd34; worst_smoothness=8'd74; worst_compactness=8'd21; worst_concavity=8'd22; worst_concave_points=8'd70; worst_symmetry=8'd39; worst_fractal_dimension=8'd14;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 16 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 16 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 17 ──────────────────────────────
        mean_radius=8'd31; mean_texture=8'd85; mean_perimeter=8'd30; mean_area=8'd15; mean_smoothness=8'd110; mean_compactness=8'd49; mean_concavity=8'd3; mean_concave_points=8'd14; mean_symmetry=8'd85; mean_fractal_dimension=8'd72; radius_error=8'd12; texture_error=8'd97; perimeter_error=8'd11; area_error=8'd5; smoothness_error=8'd97; compactness_error=8'd38; concavity_error=8'd3; concave_points_error=8'd34; symmetry_error=8'd85; fractal_dimension_error=8'd12; worst_radius=8'd18; worst_texture=8'd74; worst_perimeter=8'd17; worst_area=8'd8; worst_smoothness=8'd96; worst_compactness=8'd26; worst_concavity=8'd2; worst_concave_points=8'd20; worst_symmetry=8'd35; worst_fractal_dimension=8'd27;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 17 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 17 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 18 ──────────────────────────────
        mean_radius=8'd0; mean_texture=8'd32; mean_perimeter=8'd0; mean_area=8'd0; mean_smoothness=8'd148; mean_compactness=8'd49; mean_concavity=8'd0; mean_concave_points=8'd0; mean_symmetry=8'd104; mean_fractal_dimension=8'd152; radius_error=8'd10; texture_error=8'd65; perimeter_error=8'd10; area_error=8'd1; smoothness_error=8'd73; compactness_error=8'd16; concavity_error=8'd0; concave_points_error=8'd0; symmetry_error=8'd89; fractal_dimension_error=8'd28; worst_radius=8'd0; worst_texture=8'd51; worst_perimeter=8'd0; worst_area=8'd0; worst_smoothness=8'd151; worst_compactness=8'd26; worst_concavity=8'd0; worst_concave_points=8'd0; worst_symmetry=8'd69; worst_fractal_dimension=8'd84;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 18 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 18 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 19 ──────────────────────────────
        mean_radius=8'd161; mean_texture=8'd96; mean_perimeter=8'd163; mean_area=8'd124; mean_smoothness=8'd120; mean_compactness=8'd135; mean_concavity=8'd125; mean_concave_points=8'd168; mean_symmetry=8'd131; mean_fractal_dimension=8'd67; radius_error=8'd54; texture_error=8'd35; perimeter_error=8'd47; area_error=8'd39; smoothness_error=8'd25; compactness_error=8'd46; concavity_error=8'd26; concave_points_error=8'd69; symmetry_error=8'd55; fractal_dimension_error=8'd16; worst_radius=8'd146; worst_texture=8'd91; worst_perimeter=8'd137; worst_area=8'd100; worst_smoothness=8'd96; worst_compactness=8'd80; worst_concavity=8'd90; worst_concave_points=8'd188; worst_symmetry=8'd76; worst_fractal_dimension=8'd45;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 19 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 19 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 20 ──────────────────────────────
        mean_radius=8'd76; mean_texture=8'd52; mean_perimeter=8'd77; mean_area=8'd45; mean_smoothness=8'd111; mean_compactness=8'd95; mean_concavity=8'd47; mean_concave_points=8'd64; mean_symmetry=8'd67; mean_fractal_dimension=8'd84; radius_error=8'd15; texture_error=8'd15; perimeter_error=8'd14; area_error=8'd8; smoothness_error=8'd26; compactness_error=8'd35; concavity_error=8'd11; concave_points_error=8'd44; symmetry_error=8'd21; fractal_dimension_error=8'd20; worst_radius=8'd74; worst_texture=8'd60; worst_perimeter=8'd72; worst_area=8'd37; worst_smoothness=8'd121; worst_compactness=8'd92; worst_concavity=8'd57; worst_concave_points=8'd121; worst_symmetry=8'd51; worst_fractal_dimension=8'd104;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 20 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 20 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 21 ──────────────────────────────
        mean_radius=8'd55; mean_texture=8'd69; mean_perimeter=8'd55; mean_area=8'd30; mean_smoothness=8'd116; mean_compactness=8'd68; mean_concavity=8'd29; mean_concave_points=8'd42; mean_symmetry=8'd105; mean_fractal_dimension=8'd63; radius_error=8'd16; texture_error=8'd73; perimeter_error=8'd13; area_error=8'd7; smoothness_error=8'd56; compactness_error=8'd27; concavity_error=8'd12; concave_points_error=8'd36; symmetry_error=8'd58; fractal_dimension_error=8'd8; worst_radius=8'd45; worst_texture=8'd94; worst_perimeter=8'd44; worst_area=8'd21; worst_smoothness=8'd125; worst_compactness=8'd42; worst_concavity=8'd33; worst_concave_points=8'd55; worst_symmetry=8'd75; worst_fractal_dimension=8'd34;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 21 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 21 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 22 ──────────────────────────────
        mean_radius=8'd174; mean_texture=8'd108; mean_perimeter=8'd175; mean_area=8'd135; mean_smoothness=8'd147; mean_compactness=8'd165; mean_concavity=8'd168; mean_concave_points=8'd198; mean_symmetry=8'd135; mean_fractal_dimension=8'd86; radius_error=8'd47; texture_error=8'd32; perimeter_error=8'd41; area_error=8'd35; smoothness_error=8'd30; compactness_error=8'd67; concavity_error=8'd30; concave_points_error=8'd62; symmetry_error=8'd60; fractal_dimension_error=8'd28; worst_radius=8'd164; worst_texture=8'd114; worst_perimeter=8'd152; worst_area=8'd118; worst_smoothness=8'd137; worst_compactness=8'd152; worst_concavity=8'd144; worst_concave_points=8'd212; worst_symmetry=8'd114; worst_fractal_dimension=8'd99;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 22 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 22 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 23 ──────────────────────────────
        mean_radius=8'd29; mean_texture=8'd100; mean_perimeter=8'd28; mean_area=8'd15; mean_smoothness=8'd66; mean_compactness=8'd17; mean_concavity=8'd1; mean_concave_points=8'd7; mean_symmetry=8'd63; mean_fractal_dimension=8'd77; radius_error=8'd7; texture_error=8'd55; perimeter_error=8'd5; area_error=8'd2; smoothness_error=8'd35; compactness_error=8'd7; concavity_error=8'd1; concave_points_error=8'd17; symmetry_error=8'd31; fractal_dimension_error=8'd13; worst_radius=8'd23; worst_texture=8'd115; worst_perimeter=8'd20; worst_area=8'd10; worst_smoothness=8'd72; worst_compactness=8'd12; worst_concavity=8'd3; worst_concave_points=8'd23; worst_symmetry=8'd39; worst_fractal_dimension=8'd55;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 23 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 23 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 24 ──────────────────────────────
        mean_radius=8'd49; mean_texture=8'd127; mean_perimeter=8'd48; mean_area=8'd27; mean_smoothness=8'd51; mean_compactness=8'd33; mean_concavity=8'd12; mean_concave_points=8'd17; mean_symmetry=8'd105; mean_fractal_dimension=8'd47; radius_error=8'd13; texture_error=8'd80; perimeter_error=8'd14; area_error=8'd5; smoothness_error=8'd38; compactness_error=8'd40; concavity_error=8'd10; concave_points_error=8'd34; symmetry_error=8'd115; fractal_dimension_error=8'd12; worst_radius=8'd35; worst_texture=8'd133; worst_perimeter=8'd35; worst_area=8'd16; worst_smoothness=8'd42; worst_compactness=8'd30; worst_concavity=8'd15; worst_concave_points=8'd42; worst_symmetry=8'd84; worst_fractal_dimension=8'd27;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 24 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 24 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 25 ──────────────────────────────
        mean_radius=8'd73; mean_texture=8'd11; mean_perimeter=8'd73; mean_area=8'd43; mean_smoothness=8'd176; mean_compactness=8'd75; mean_concavity=8'd41; mean_concave_points=8'd83; mean_symmetry=8'd168; mean_fractal_dimension=8'd88; radius_error=8'd28; texture_error=8'd37; perimeter_error=8'd23; area_error=8'd12; smoothness_error=8'd101; compactness_error=8'd50; concavity_error=8'd7; concave_points_error=8'd40; symmetry_error=8'd85; fractal_dimension_error=8'd46; worst_radius=8'd50; worst_texture=8'd3; worst_perimeter=8'd48; worst_area=8'd24; worst_smoothness=8'd128; worst_compactness=8'd31; worst_concavity=8'd17; worst_concave_points=8'd65; worst_symmetry=8'd58; worst_fractal_dimension=8'd36;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 25 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 25 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 26 ──────────────────────────────
        mean_radius=8'd70; mean_texture=8'd35; mean_perimeter=8'd69; mean_area=8'd41; mean_smoothness=8'd71; mean_compactness=8'd58; mean_concavity=8'd30; mean_concave_points=8'd36; mean_symmetry=8'd61; mean_fractal_dimension=8'd32; radius_error=8'd7; texture_error=8'd10; perimeter_error=8'd10; area_error=8'd4; smoothness_error=8'd22; compactness_error=8'd35; concavity_error=8'd18; concave_points_error=8'd41; symmetry_error=8'd32; fractal_dimension_error=8'd15; worst_radius=8'd52; worst_texture=8'd36; worst_perimeter=8'd55; worst_area=8'd25; worst_smoothness=8'd79; worst_compactness=8'd68; worst_concavity=8'd58; worst_concave_points=8'd80; worst_symmetry=8'd59; worst_fractal_dimension=8'd39;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 26 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 26 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 27 ──────────────────────────────
        mean_radius=8'd32; mean_texture=8'd154; mean_perimeter=8'd32; mean_area=8'd17; mean_smoothness=8'd87; mean_compactness=8'd50; mean_concavity=8'd36; mean_concave_points=8'd35; mean_symmetry=8'd58; mean_fractal_dimension=8'd61; radius_error=8'd10; texture_error=8'd106; perimeter_error=8'd8; area_error=8'd4; smoothness_error=8'd90; compactness_error=8'd48; concavity_error=8'd31; concave_points_error=8'd83; symmetry_error=8'd50; fractal_dimension_error=8'd36; worst_radius=8'd20; worst_texture=8'd156; worst_perimeter=8'd20; worst_area=8'd8; worst_smoothness=8'd116; worst_compactness=8'd40; worst_concavity=8'd41; worst_concave_points=8'd80; worst_symmetry=8'd33; worst_fractal_dimension=8'd60;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 27 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 27 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 28 ──────────────────────────────
        mean_radius=8'd63; mean_texture=8'd79; mean_perimeter=8'd62; mean_area=8'd36; mean_smoothness=8'd102; mean_compactness=8'd53; mean_concavity=8'd16; mean_concave_points=8'd23; mean_symmetry=8'd81; mean_fractal_dimension=8'd64; radius_error=8'd10; texture_error=8'd52; perimeter_error=8'd9; area_error=8'd5; smoothness_error=8'd34; compactness_error=8'd27; concavity_error=8'd10; concave_points_error=8'd48; symmetry_error=8'd53; fractal_dimension_error=8'd11; worst_radius=8'd47; worst_texture=8'd95; worst_perimeter=8'd43; worst_area=8'd23; worst_smoothness=8'd102; worst_compactness=8'd44; worst_concavity=8'd26; worst_concave_points=8'd73; worst_symmetry=8'd59; worst_fractal_dimension=8'd37;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 28 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 28 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 29 ──────────────────────────────
        mean_radius=8'd119; mean_texture=8'd128; mean_perimeter=8'd120; mean_area=8'd83; mean_smoothness=8'd125; mean_compactness=8'd143; mean_concavity=8'd101; mean_concave_points=8'd101; mean_symmetry=8'd103; mean_fractal_dimension=8'd80; radius_error=8'd44; texture_error=8'd38; perimeter_error=8'd35; area_error=8'd30; smoothness_error=8'd36; compactness_error=8'd103; concavity_error=8'd27; concave_points_error=8'd54; symmetry_error=8'd35; fractal_dimension_error=8'd48; worst_radius=8'd136; worst_texture=8'd148; worst_perimeter=8'd126; worst_area=8'd92; worst_smoothness=8'd151; worst_compactness=8'd199; worst_concavity=8'd134; worst_concave_points=8'd166; worst_symmetry=8'd88; worst_fractal_dimension=8'd170;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 29 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 29 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 30 ──────────────────────────────
        mean_radius=8'd43; mean_texture=8'd110; mean_perimeter=8'd43; mean_area=8'd23; mean_smoothness=8'd99; mean_compactness=8'd55; mean_concavity=8'd29; mean_concave_points=8'd29; mean_symmetry=8'd117; mean_fractal_dimension=8'd84; radius_error=8'd16; texture_error=8'd62; perimeter_error=8'd15; area_error=8'd5; smoothness_error=8'd15; compactness_error=8'd54; concavity_error=8'd22; concave_points_error=8'd49; symmetry_error=8'd101; fractal_dimension_error=8'd34; worst_radius=8'd31; worst_texture=8'd110; worst_perimeter=8'd30; worst_area=8'd13; worst_smoothness=8'd65; worst_compactness=8'd42; worst_concavity=8'd32; worst_concave_points=8'd56; worst_symmetry=8'd81; worst_fractal_dimension=8'd55;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 30 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 30 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 31 ──────────────────────────────
        mean_radius=8'd55; mean_texture=8'd26; mean_perimeter=8'd52; mean_area=8'd30; mean_smoothness=8'd93; mean_compactness=8'd29; mean_concavity=8'd12; mean_concave_points=8'd25; mean_symmetry=8'd58; mean_fractal_dimension=8'd49; radius_error=8'd7; texture_error=8'd21; perimeter_error=8'd5; area_error=8'd3; smoothness_error=8'd33; compactness_error=8'd14; concavity_error=8'd5; concave_points_error=8'd30; symmetry_error=8'd32; fractal_dimension_error=8'd14; worst_radius=8'd42; worst_texture=8'd43; worst_perimeter=8'd38; worst_area=8'd20; worst_smoothness=8'd98; worst_compactness=8'd27; worst_concavity=8'd18; worst_concave_points=8'd62; worst_symmetry=8'd48; worst_fractal_dimension=8'd52;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 31 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 31 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 32 ──────────────────────────────
        mean_radius=8'd26; mean_texture=8'd81; mean_perimeter=8'd25; mean_area=8'd13; mean_smoothness=8'd126; mean_compactness=8'd56; mean_concavity=8'd5; mean_concave_points=8'd25; mean_symmetry=8'd187; mean_fractal_dimension=8'd109; radius_error=8'd54; texture_error=8'd78; perimeter_error=8'd46; area_error=8'd17; smoothness_error=8'd98; compactness_error=8'd32; concavity_error=8'd4; concave_points_error=8'd51; symmetry_error=8'd110; fractal_dimension_error=8'd29; worst_radius=8'd24; worst_texture=8'd76; worst_perimeter=8'd22; worst_area=8'd10; worst_smoothness=8'd119; worst_compactness=8'd30; worst_concavity=8'd4; worst_concave_points=8'd40; worst_symmetry=8'd82; worst_fractal_dimension=8'd54;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 32 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 32 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 33 ──────────────────────────────
        mean_radius=8'd75; mean_texture=8'd57; mean_perimeter=8'd72; mean_area=8'd44; mean_smoothness=8'd92; mean_compactness=8'd46; mean_concavity=8'd10; mean_concave_points=8'd24; mean_symmetry=8'd63; mean_fractal_dimension=8'd62; radius_error=8'd9; texture_error=8'd7; perimeter_error=8'd7; area_error=8'd5; smoothness_error=8'd18; compactness_error=8'd10; concavity_error=8'd5; concave_points_error=8'd25; symmetry_error=8'd13; fractal_dimension_error=8'd7; worst_radius=8'd67; worst_texture=8'd56; worst_perimeter=8'd61; worst_area=8'd35; worst_smoothness=8'd96; worst_compactness=8'd36; worst_concavity=8'd25; worst_concave_points=8'd76; worst_symmetry=8'd62; worst_fractal_dimension=8'd49;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 33 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 33 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 34 ──────────────────────────────
        mean_radius=8'd31; mean_texture=8'd67; mean_perimeter=8'd31; mean_area=8'd16; mean_smoothness=8'd123; mean_compactness=8'd57; mean_concavity=8'd11; mean_concave_points=8'd24; mean_symmetry=8'd101; mean_fractal_dimension=8'd103; radius_error=8'd12; texture_error=8'd48; perimeter_error=8'd11; area_error=8'd4; smoothness_error=8'd54; compactness_error=8'd22; concavity_error=8'd5; concave_points_error=8'd37; symmetry_error=8'd88; fractal_dimension_error=8'd25; worst_radius=8'd23; worst_texture=8'd74; worst_perimeter=8'd23; worst_area=8'd10; worst_smoothness=8'd120; worst_compactness=8'd33; worst_concavity=8'd13; worst_concave_points=8'd49; worst_symmetry=8'd75; worst_fractal_dimension=8'd71;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 34 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 34 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 35 ──────────────────────────────
        mean_radius=8'd48; mean_texture=8'd78; mean_perimeter=8'd46; mean_area=8'd26; mean_smoothness=8'd98; mean_compactness=8'd31; mean_concavity=8'd18; mean_concave_points=8'd29; mean_symmetry=8'd103; mean_fractal_dimension=8'd49; radius_error=8'd20; texture_error=8'd34; perimeter_error=8'd17; area_error=8'd8; smoothness_error=8'd57; compactness_error=8'd12; concavity_error=8'd9; concave_points_error=8'd42; symmetry_error=8'd116; fractal_dimension_error=8'd13; worst_radius=8'd39; worst_texture=8'd71; worst_perimeter=8'd35; worst_area=8'd18; worst_smoothness=8'd93; worst_compactness=8'd17; worst_concavity=8'd18; worst_concave_points=8'd55; worst_symmetry=8'd88; worst_fractal_dimension=8'd33;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 35 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 35 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 36 ──────────────────────────────
        mean_radius=8'd104; mean_texture=8'd117; mean_perimeter=8'd99; mean_area=8'd69; mean_smoothness=8'd68; mean_compactness=8'd41; mean_concavity=8'd20; mean_concave_points=8'd42; mean_symmetry=8'd49; mean_fractal_dimension=8'd38; radius_error=8'd25; texture_error=8'd47; perimeter_error=8'd21; area_error=8'd16; smoothness_error=8'd20; compactness_error=8'd13; concavity_error=8'd7; concave_points_error=8'd37; symmetry_error=8'd32; fractal_dimension_error=8'd19; worst_radius=8'd98; worst_texture=8'd149; worst_perimeter=8'd90; worst_area=8'd59; worst_smoothness=8'd81; worst_compactness=8'd36; worst_concavity=8'd30; worst_concave_points=8'd87; worst_symmetry=8'd70; worst_fractal_dimension=8'd64;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 36 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 36 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 37 ──────────────────────────────
        mean_radius=8'd51; mean_texture=8'd37; mean_perimeter=8'd48; mean_area=8'd28; mean_smoothness=8'd59; mean_compactness=8'd21; mean_concavity=8'd13; mean_concave_points=8'd35; mean_symmetry=8'd127; mean_fractal_dimension=8'd60; radius_error=8'd42; texture_error=8'd51; perimeter_error=8'd36; area_error=8'd15; smoothness_error=8'd55; compactness_error=8'd23; concavity_error=8'd10; concave_points_error=8'd89; symmetry_error=8'd102; fractal_dimension_error=8'd10; worst_radius=8'd43; worst_texture=8'd42; worst_perimeter=8'd39; worst_area=8'd20; worst_smoothness=8'd56; worst_compactness=8'd16; worst_concavity=8'd14; worst_concave_points=8'd73; worst_symmetry=8'd77; worst_fractal_dimension=8'd26;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 37 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 37 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 38 ──────────────────────────────
        mean_radius=8'd132; mean_texture=8'd89; mean_perimeter=8'd130; mean_area=8'd95; mean_smoothness=8'd97; mean_compactness=8'd78; mean_concavity=8'd67; mean_concave_points=8'd94; mean_symmetry=8'd85; mean_fractal_dimension=8'd40; radius_error=8'd31; texture_error=8'd23; perimeter_error=8'd29; area_error=8'd22; smoothness_error=8'd23; compactness_error=8'd22; concavity_error=8'd15; concave_points_error=8'd50; symmetry_error=8'd28; fractal_dimension_error=8'd11; worst_radius=8'd132; worst_texture=8'd106; worst_perimeter=8'd128; worst_area=8'd87; worst_smoothness=8'd126; worst_compactness=8'd64; worst_concavity=8'd77; worst_concave_points=8'd169; worst_symmetry=8'd75; worst_fractal_dimension=8'd62;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 38 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 38 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 39 ──────────────────────────────
        mean_radius=8'd87; mean_texture=8'd123; mean_perimeter=8'd85; mean_area=8'd54; mean_smoothness=8'd85; mean_compactness=8'd58; mean_concavity=8'd19; mean_concave_points=8'd37; mean_symmetry=8'd71; mean_fractal_dimension=8'd47; radius_error=8'd24; texture_error=8'd42; perimeter_error=8'd18; area_error=8'd13; smoothness_error=8'd27; compactness_error=8'd31; concavity_error=8'd7; concave_points_error=8'd42; symmetry_error=8'd62; fractal_dimension_error=8'd18; worst_radius=8'd69; worst_texture=8'd116; worst_perimeter=8'd63; worst_area=8'd37; worst_smoothness=8'd70; worst_compactness=8'd42; worst_concavity=8'd19; worst_concave_points=8'd61; worst_symmetry=8'd48; worst_fractal_dimension=8'd38;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 39 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 39 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 40 ──────────────────────────────
        mean_radius=8'd35; mean_texture=8'd83; mean_perimeter=8'd35; mean_area=8'd18; mean_smoothness=8'd109; mean_compactness=8'd58; mean_concavity=8'd18; mean_concave_points=8'd15; mean_symmetry=8'd143; mean_fractal_dimension=8'd80; radius_error=8'd22; texture_error=8'd66; perimeter_error=8'd19; area_error=8'd8; smoothness_error=8'd51; compactness_error=8'd38; concavity_error=8'd19; concave_points_error=8'd42; symmetry_error=8'd91; fractal_dimension_error=8'd23; worst_radius=8'd27; worst_texture=8'd77; worst_perimeter=8'd26; worst_area=8'd11; worst_smoothness=8'd88; worst_compactness=8'd34; worst_concavity=8'd16; worst_concave_points=8'd28; worst_symmetry=8'd63; worst_fractal_dimension=8'd44;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 40 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 40 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 41 ──────────────────────────────
        mean_radius=8'd92; mean_texture=8'd138; mean_perimeter=8'd91; mean_area=8'd60; mean_smoothness=8'd115; mean_compactness=8'd68; mean_concavity=8'd74; mean_concave_points=8'd83; mean_symmetry=8'd65; mean_fractal_dimension=8'd79; radius_error=8'd50; texture_error=8'd65; perimeter_error=8'd41; area_error=8'd27; smoothness_error=8'd76; compactness_error=8'd42; concavity_error=8'd32; concave_points_error=8'd84; symmetry_error=8'd63; fractal_dimension_error=8'd35; worst_radius=8'd92; worst_texture=8'd144; worst_perimeter=8'd86; worst_area=8'd52; worst_smoothness=8'd164; worst_compactness=8'd58; worst_concavity=8'd82; worst_concave_points=8'd134; worst_symmetry=8'd55; worst_fractal_dimension=8'd85;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 41 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 41 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 42 ──────────────────────────────
        mean_radius=8'd49; mean_texture=8'd54; mean_perimeter=8'd50; mean_area=8'd26; mean_smoothness=8'd129; mean_compactness=8'd85; mean_concavity=8'd42; mean_concave_points=8'd57; mean_symmetry=8'd98; mean_fractal_dimension=8'd71; radius_error=8'd12; texture_error=8'd21; perimeter_error=8'd11; area_error=8'd4; smoothness_error=8'd36; compactness_error=8'd34; concavity_error=8'd17; concave_points_error=8'd63; symmetry_error=8'd50; fractal_dimension_error=8'd10; worst_radius=8'd37; worst_texture=8'd52; worst_perimeter=8'd36; worst_area=8'd16; worst_smoothness=8'd122; worst_compactness=8'd53; worst_concavity=8'd47; worst_concave_points=8'd97; worst_symmetry=8'd61; worst_fractal_dimension=8'd42;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 42 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 42 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 43 ──────────────────────────────
        mean_radius=8'd52; mean_texture=8'd80; mean_perimeter=8'd50; mean_area=8'd28; mean_smoothness=8'd83; mean_compactness=8'd43; mean_concavity=8'd16; mean_concave_points=8'd18; mean_symmetry=8'd50; mean_fractal_dimension=8'd57; radius_error=8'd10; texture_error=8'd28; perimeter_error=8'd8; area_error=8'd5; smoothness_error=8'd33; compactness_error=8'd29; concavity_error=8'd13; concave_points_error=8'd33; symmetry_error=8'd39; fractal_dimension_error=8'd18; worst_radius=8'd43; worst_texture=8'd88; worst_perimeter=8'd40; worst_area=8'd20; worst_smoothness=8'd98; worst_compactness=8'd45; worst_concavity=8'd30; worst_concave_points=8'd61; worst_symmetry=8'd49; worst_fractal_dimension=8'd54;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 43 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 43 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 44 ──────────────────────────────
        mean_radius=8'd52; mean_texture=8'd66; mean_perimeter=8'd51; mean_area=8'd29; mean_smoothness=8'd161; mean_compactness=8'd46; mean_concavity=8'd35; mean_concave_points=8'd94; mean_symmetry=8'd115; mean_fractal_dimension=8'd47; radius_error=8'd49; texture_error=8'd109; perimeter_error=8'd39; area_error=8'd20; smoothness_error=8'd108; compactness_error=8'd24; concavity_error=8'd8; concave_points_error=8'd92; symmetry_error=8'd90; fractal_dimension_error=8'd19; worst_radius=8'd35; worst_texture=8'd47; worst_perimeter=8'd32; worst_area=8'd16; worst_smoothness=8'd112; worst_compactness=8'd16; worst_concavity=8'd15; worst_concave_points=8'd78; worst_symmetry=8'd33; worst_fractal_dimension=8'd11;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 44 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 44 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 45 ──────────────────────────────
        mean_radius=8'd46; mean_texture=8'd100; mean_perimeter=8'd45; mean_area=8'd25; mean_smoothness=8'd80; mean_compactness=8'd40; mean_concavity=8'd31; mean_concave_points=8'd24; mean_symmetry=8'd44; mean_fractal_dimension=8'd82; radius_error=8'd11; texture_error=8'd35; perimeter_error=8'd10; area_error=8'd5; smoothness_error=8'd64; compactness_error=8'd26; concavity_error=8'd16; concave_points_error=8'd31; symmetry_error=8'd37; fractal_dimension_error=8'd14; worst_radius=8'd40; worst_texture=8'd116; worst_perimeter=8'd38; worst_area=8'd19; worst_smoothness=8'd171; worst_compactness=8'd54; worst_concavity=8'd64; worst_concave_points=8'd73; worst_symmetry=8'd64; worst_fractal_dimension=8'd72;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 45 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 45 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 46 ──────────────────────────────
        mean_radius=8'd20; mean_texture=8'd36; mean_perimeter=8'd22; mean_area=8'd10; mean_smoothness=8'd194; mean_compactness=8'd90; mean_concavity=8'd20; mean_concave_points=8'd31; mean_symmetry=8'd140; mean_fractal_dimension=8'd145; radius_error=8'd22; texture_error=8'd43; perimeter_error=8'd20; area_error=8'd6; smoothness_error=8'd119; compactness_error=8'd44; concavity_error=8'd14; concave_points_error=8'd76; symmetry_error=8'd153; fractal_dimension_error=8'd26; worst_radius=8'd18; worst_texture=8'd40; worst_perimeter=8'd17; worst_area=8'd7; worst_smoothness=8'd197; worst_compactness=8'd51; worst_concavity=8'd20; worst_concave_points=8'd64; worst_symmetry=8'd106; worst_fractal_dimension=8'd75;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 46 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 46 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 47 ──────────────────────────────
        mean_radius=8'd22; mean_texture=8'd157; mean_perimeter=8'd21; mean_area=8'd11; mean_smoothness=8'd66; mean_compactness=8'd26; mean_concavity=8'd0; mean_concave_points=8'd0; mean_symmetry=8'd78; mean_fractal_dimension=8'd57; radius_error=8'd39; texture_error=8'd145; perimeter_error=8'd34; area_error=8'd11; smoothness_error=8'd86; compactness_error=8'd17; concavity_error=8'd0; concave_points_error=8'd0; symmetry_error=8'd105; fractal_dimension_error=8'd21; worst_radius=8'd17; worst_texture=8'd151; worst_perimeter=8'd16; worst_area=8'd7; worst_smoothness=8'd63; worst_compactness=8'd12; worst_concavity=8'd0; worst_concave_points=8'd0; worst_symmetry=8'd46; worst_fractal_dimension=8'd32;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 47 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 47 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 48 ──────────────────────────────
        mean_radius=8'd50; mean_texture=8'd89; mean_perimeter=8'd50; mean_area=8'd27; mean_smoothness=8'd113; mean_compactness=8'd66; mean_concavity=8'd25; mean_concave_points=8'd27; mean_symmetry=8'd94; mean_fractal_dimension=8'd79; radius_error=8'd9; texture_error=8'd29; perimeter_error=8'd8; area_error=8'd4; smoothness_error=8'd31; compactness_error=8'd29; concavity_error=8'd12; concave_points_error=8'd26; symmetry_error=8'd31; fractal_dimension_error=8'd16; worst_radius=8'd44; worst_texture=8'd114; worst_perimeter=8'd42; worst_area=8'd21; worst_smoothness=8'd145; worst_compactness=8'd75; worst_concavity=8'd56; worst_concave_points=8'd71; worst_symmetry=8'd82; worst_fractal_dimension=8'd74;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 48 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 48 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 49 ──────────────────────────────
        mean_radius=8'd65; mean_texture=8'd52; mean_perimeter=8'd66; mean_area=8'd38; mean_smoothness=8'd59; mean_compactness=8'd67; mean_concavity=8'd67; mean_concave_points=8'd43; mean_symmetry=8'd36; mean_fractal_dimension=8'd50; radius_error=8'd17; texture_error=8'd58; perimeter_error=8'd19; area_error=8'd8; smoothness_error=8'd41; compactness_error=8'd72; concavity_error=8'd51; concave_points_error=8'd86; symmetry_error=8'd52; fractal_dimension_error=8'd25; worst_radius=8'd49; worst_texture=8'd52; worst_perimeter=8'd49; worst_area=8'd24; worst_smoothness=8'd49; worst_compactness=8'd57; worst_concavity=8'd68; worst_concave_points=8'd89; worst_symmetry=8'd22; worst_fractal_dimension=8'd35;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 49 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 49 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 50 ──────────────────────────────
        mean_radius=8'd119; mean_texture=8'd107; mean_perimeter=8'd116; mean_area=8'd83; mean_smoothness=8'd103; mean_compactness=8'd62; mean_concavity=8'd54; mean_concave_points=8'd83; mean_symmetry=8'd95; mean_fractal_dimension=8'd31; radius_error=8'd29; texture_error=8'd21; perimeter_error=8'd25; area_error=8'd18; smoothness_error=8'd24; compactness_error=8'd19; concavity_error=8'd13; concave_points_error=8'd48; symmetry_error=8'd17; fractal_dimension_error=8'd6; worst_radius=8'd120; worst_texture=8'd118; worst_perimeter=8'd111; worst_area=8'd77; worst_smoothness=8'd147; worst_compactness=8'd64; worst_concavity=8'd79; worst_concave_points=8'd174; worst_symmetry=8'd83; worst_fractal_dimension=8'd45;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 50 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 50 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 51 ──────────────────────────────
        mean_radius=8'd137; mean_texture=8'd133; mean_perimeter=8'd139; mean_area=8'd100; mean_smoothness=8'd124; mean_compactness=8'd148; mean_concavity=8'd139; mean_concave_points=8'd158; mean_symmetry=8'd138; mean_fractal_dimension=8'd65; radius_error=8'd66; texture_error=8'd62; perimeter_error=8'd58; area_error=8'd47; smoothness_error=8'd39; compactness_error=8'd60; concavity_error=8'd33; concave_points_error=8'd56; symmetry_error=8'd58; fractal_dimension_error=8'd32; worst_radius=8'd135; worst_texture=8'd149; worst_perimeter=8'd137; worst_area=8'd92; worst_smoothness=8'd135; worst_compactness=8'd112; worst_concavity=8'd125; worst_concave_points=8'd162; worst_symmetry=8'd94; worst_fractal_dimension=8'd92;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 51 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 51 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 52 ──────────────────────────────
        mean_radius=8'd68; mean_texture=8'd111; mean_perimeter=8'd71; mean_area=8'd39; mean_smoothness=8'd110; mean_compactness=8'd113; mean_concavity=8'd52; mean_concave_points=8'd65; mean_symmetry=8'd93; mean_fractal_dimension=8'd124; radius_error=8'd8; texture_error=8'd32; perimeter_error=8'd9; area_error=8'd4; smoothness_error=8'd31; compactness_error=8'd54; concavity_error=8'd16; concave_points_error=8'd40; symmetry_error=8'd82; fractal_dimension_error=8'd29; worst_radius=8'd55; worst_texture=8'd116; worst_perimeter=8'd58; worst_area=8'd26; worst_smoothness=8'd110; worst_compactness=8'd116; worst_concavity=8'd64; worst_concave_points=8'd99; worst_symmetry=8'd129; worst_fractal_dimension=8'd114;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 52 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 52 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 53 ──────────────────────────────
        mean_radius=8'd78; mean_texture=8'd30; mean_perimeter=8'd77; mean_area=8'd46; mean_smoothness=8'd166; mean_compactness=8'd68; mean_concavity=8'd60; mean_concave_points=8'd84; mean_symmetry=8'd110; mean_fractal_dimension=8'd78; radius_error=8'd40; texture_error=8'd128; perimeter_error=8'd40; area_error=8'd18; smoothness_error=8'd72; compactness_error=8'd58; concavity_error=8'd31; concave_points_error=8'd138; symmetry_error=8'd44; fractal_dimension_error=8'd41; worst_radius=8'd55; worst_texture=8'd23; worst_perimeter=8'd52; worst_area=8'd27; worst_smoothness=8'd118; worst_compactness=8'd31; worst_concavity=8'd32; worst_concave_points=8'd89; worst_symmetry=8'd30; worst_fractal_dimension=8'd38;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 53 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 53 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 54 ──────────────────────────────
        mean_radius=8'd53; mean_texture=8'd43; mean_perimeter=8'd55; mean_area=8'd29; mean_smoothness=8'd144; mean_compactness=8'd96; mean_concavity=8'd22; mean_concave_points=8'd38; mean_symmetry=8'd113; mean_fractal_dimension=8'd153; radius_error=8'd26; texture_error=8'd17; perimeter_error=8'd27; area_error=8'd9; smoothness_error=8'd73; compactness_error=8'd86; concavity_error=8'd18; concave_points_error=8'd54; symmetry_error=8'd111; fractal_dimension_error=8'd75; worst_radius=8'd42; worst_texture=8'd31; worst_perimeter=8'd41; worst_area=8'd18; worst_smoothness=8'd123; worst_compactness=8'd63; worst_concavity=8'd19; worst_concave_points=8'd53; worst_symmetry=8'd58; worst_fractal_dimension=8'd105;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 54 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 54 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 55 ──────────────────────────────
        mean_radius=8'd68; mean_texture=8'd73; mean_perimeter=8'd66; mean_area=8'd40; mean_smoothness=8'd51; mean_compactness=8'd35; mean_concavity=8'd29; mean_concave_points=8'd36; mean_symmetry=8'd39; mean_fractal_dimension=8'd30; radius_error=8'd8; texture_error=8'd18; perimeter_error=8'd6; area_error=8'd5; smoothness_error=8'd37; compactness_error=8'd24; concavity_error=8'd10; concave_points_error=8'd41; symmetry_error=8'd15; fractal_dimension_error=8'd7; worst_radius=8'd58; worst_texture=8'd81; worst_perimeter=8'd53; worst_area=8'd29; worst_smoothness=8'd99; worst_compactness=8'd47; worst_concavity=8'd38; worst_concave_points=8'd92; worst_symmetry=8'd34; worst_fractal_dimension=8'd31;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 55 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 55 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 56 ──────────────────────────────
        mean_radius=8'd32; mean_texture=8'd56; mean_perimeter=8'd34; mean_area=8'd17; mean_smoothness=8'd123; mean_compactness=8'd80; mean_concavity=8'd40; mean_concave_points=8'd50; mean_symmetry=8'd78; mean_fractal_dimension=8'd123; radius_error=8'd24; texture_error=8'd63; perimeter_error=8'd10; area_error=8'd8; smoothness_error=8'd76; compactness_error=8'd77; concavity_error=8'd26; concave_points_error=8'd75; symmetry_error=8'd92; fractal_dimension_error=8'd59; worst_radius=8'd24; worst_texture=8'd58; worst_perimeter=8'd22; worst_area=8'd11; worst_smoothness=8'd120; worst_compactness=8'd58; worst_concavity=8'd39; worst_concave_points=8'd85; worst_symmetry=8'd52; worst_fractal_dimension=8'd91;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 56 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 56 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 57 ──────────────────────────────
        mean_radius=8'd219; mean_texture=8'd131; mean_perimeter=8'd224; mean_area=8'd187; mean_smoothness=8'd124; mean_compactness=8'd216; mean_concavity=8'd199; mean_concave_points=8'd234; mean_symmetry=8'd90; mean_fractal_dimension=8'd96; radius_error=8'd73; texture_error=8'd63; perimeter_error=8'd80; area_error=8'd54; smoothness_error=8'd56; compactness_error=8'd105; concavity_error=8'd37; concave_points_error=8'd98; symmetry_error=8'd13; fractal_dimension_error=8'd44; worst_radius=8'd199; worst_texture=8'd147; worst_perimeter=8'd204; worst_area=8'd148; worst_smoothness=8'd149; worst_compactness=8'd163; worst_concavity=8'd132; worst_concave_points=8'd251; worst_symmetry=8'd40; worst_fractal_dimension=8'd108;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 57 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 57 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 58 ──────────────────────────────
        mean_radius=8'd72; mean_texture=8'd96; mean_perimeter=8'd73; mean_area=8'd43; mean_smoothness=8'd113; mean_compactness=8'd93; mean_concavity=8'd64; mean_concave_points=8'd69; mean_symmetry=8'd75; mean_fractal_dimension=8'd76; radius_error=8'd9; texture_error=8'd13; perimeter_error=8'd9; area_error=8'd6; smoothness_error=8'd32; compactness_error=8'd39; concavity_error=8'd20; concave_points_error=8'd61; symmetry_error=8'd28; fractal_dimension_error=8'd20; worst_radius=8'd64; worst_texture=8'd95; worst_perimeter=8'd68; worst_area=8'd33; worst_smoothness=8'd156; worst_compactness=8'd111; worst_concavity=8'd102; worst_concave_points=8'd198; worst_symmetry=8'd62; worst_fractal_dimension=8'd113;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 58 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 58 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 59 ──────────────────────────────
        mean_radius=8'd45; mean_texture=8'd29; mean_perimeter=8'd44; mean_area=8'd24; mean_smoothness=8'd105; mean_compactness=8'd50; mean_concavity=8'd20; mean_concave_points=8'd35; mean_symmetry=8'd82; mean_fractal_dimension=8'd68; radius_error=8'd7; texture_error=8'd10; perimeter_error=8'd5; area_error=8'd3; smoothness_error=8'd41; compactness_error=8'd17; concavity_error=8'd8; concave_points_error=8'd43; symmetry_error=8'd43; fractal_dimension_error=8'd17; worst_radius=8'd34; worst_texture=8'd28; worst_perimeter=8'd31; worst_area=8'd15; worst_smoothness=8'd112; worst_compactness=8'd35; worst_concavity=8'd26; worst_concave_points=8'd77; worst_symmetry=8'd59; worst_fractal_dimension=8'd54;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 59 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 59 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 60 ──────────────────────────────
        mean_radius=8'd65; mean_texture=8'd71; mean_perimeter=8'd64; mean_area=8'd37; mean_smoothness=8'd108; mean_compactness=8'd66; mean_concavity=8'd23; mean_concave_points=8'd29; mean_symmetry=8'd75; mean_fractal_dimension=8'd54; radius_error=8'd14; texture_error=8'd41; perimeter_error=8'd12; area_error=8'd6; smoothness_error=8'd31; compactness_error=8'd27; concavity_error=8'd13; concave_points_error=8'd40; symmetry_error=8'd46; fractal_dimension_error=8'd17; worst_radius=8'd52; worst_texture=8'd87; worst_perimeter=8'd48; worst_area=8'd25; worst_smoothness=8'd100; worst_compactness=8'd52; worst_concavity=8'd35; worst_concave_points=8'd69; worst_symmetry=8'd61; worst_fractal_dimension=8'd52;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 60 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 60 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 61 ──────────────────────────────
        mean_radius=8'd150; mean_texture=8'd100; mean_perimeter=8'd149; mean_area=8'd113; mean_smoothness=8'd131; mean_compactness=8'd123; mean_concavity=8'd118; mean_concave_points=8'd162; mean_symmetry=8'd123; mean_fractal_dimension=8'd54; radius_error=8'd59; texture_error=8'd24; perimeter_error=8'd46; area_error=8'd42; smoothness_error=8'd38; compactness_error=8'd72; concavity_error=8'd25; concave_points_error=8'd99; symmetry_error=8'd70; fractal_dimension_error=8'd32; worst_radius=8'd139; worst_texture=8'd92; worst_perimeter=8'd127; worst_area=8'd94; worst_smoothness=8'd127; worst_compactness=8'd111; worst_concavity=8'd92; worst_concave_points=8'd213; worst_symmetry=8'd103; worst_fractal_dimension=8'd70;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 61 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 61 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 62 ──────────────────────────────
        mean_radius=8'd173; mean_texture=8'd109; mean_perimeter=8'd171; mean_area=8'd143; mean_smoothness=8'd134; mean_compactness=8'd84; mean_concavity=8'd146; mean_concave_points=8'd176; mean_symmetry=8'd76; mean_fractal_dimension=8'd34; radius_error=8'd98; texture_error=8'd50; perimeter_error=8'd83; area_error=8'd72; smoothness_error=8'd74; compactness_error=8'd51; concavity_error=8'd33; concave_points_error=8'd119; symmetry_error=8'd16; fractal_dimension_error=8'd29; worst_radius=8'd156; worst_texture=8'd98; worst_perimeter=8'd145; worst_area=8'd114; worst_smoothness=8'd121; worst_compactness=8'd52; worst_concavity=8'd84; worst_concave_points=8'd194; worst_symmetry=8'd25; worst_fractal_dimension=8'd35;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 62 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 62 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 63 ──────────────────────────────
        mean_radius=8'd84; mean_texture=8'd149; mean_perimeter=8'd80; mean_area=8'd52; mean_smoothness=8'd40; mean_compactness=8'd29; mean_concavity=8'd21; mean_concave_points=8'd22; mean_symmetry=8'd74; mean_fractal_dimension=8'd23; radius_error=8'd11; texture_error=8'd31; perimeter_error=8'd12; area_error=8'd7; smoothness_error=8'd32; compactness_error=8'd28; concavity_error=8'd13; concave_points_error=8'd31; symmetry_error=8'd30; fractal_dimension_error=8'd9; worst_radius=8'd63; worst_texture=8'd136; worst_perimeter=8'd60; worst_area=8'd32; worst_smoothness=8'd53; worst_compactness=8'd33; worst_concavity=8'd30; worst_concave_points=8'd49; worst_symmetry=8'd39; worst_fractal_dimension=8'd21;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 63 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 63 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 64 ──────────────────────────────
        mean_radius=8'd58; mean_texture=8'd80; mean_perimeter=8'd54; mean_area=8'd32; mean_smoothness=8'd70; mean_compactness=8'd20; mean_concavity=8'd5; mean_concave_points=8'd11; mean_symmetry=8'd51; mean_fractal_dimension=8'd51; radius_error=8'd7; texture_error=8'd66; perimeter_error=8'd5; area_error=8'd3; smoothness_error=8'd53; compactness_error=8'd12; concavity_error=8'd5; concave_points_error=8'd32; symmetry_error=8'd55; fractal_dimension_error=8'd12; worst_radius=8'd44; worst_texture=8'd112; worst_perimeter=8'd39; worst_area=8'd20; worst_smoothness=8'd88; worst_compactness=8'd18; worst_concavity=8'd7; worst_concave_points=8'd35; worst_symmetry=8'd50; worst_fractal_dimension=8'd37;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 64 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 64 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 65 ──────────────────────────────
        mean_radius=8'd62; mean_texture=8'd123; mean_perimeter=8'd61; mean_area=8'd36; mean_smoothness=8'd61; mean_compactness=8'd49; mean_concavity=8'd32; mean_concave_points=8'd26; mean_symmetry=8'd47; mean_fractal_dimension=8'd55; radius_error=8'd12; texture_error=8'd40; perimeter_error=8'd8; area_error=8'd6; smoothness_error=8'd30; compactness_error=8'd40; concavity_error=8'd19; concave_points_error=8'd42; symmetry_error=8'd27; fractal_dimension_error=8'd22; worst_radius=8'd51; worst_texture=8'd131; worst_perimeter=8'd47; worst_area=8'd25; worst_smoothness=8'd89; worst_compactness=8'd89; worst_concavity=8'd80; worst_concave_points=8'd103; worst_symmetry=8'd63; worst_fractal_dimension=8'd88;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 65 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 65 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 66 ──────────────────────────────
        mean_radius=8'd101; mean_texture=8'd114; mean_perimeter=8'd105; mean_area=8'd67; mean_smoothness=8'd145; mean_compactness=8'd136; mean_concavity=8'd127; mean_concave_points=8'd120; mean_symmetry=8'd126; mean_fractal_dimension=8'd125; radius_error=8'd41; texture_error=8'd40; perimeter_error=8'd34; area_error=8'd25; smoothness_error=8'd61; compactness_error=8'd72; concavity_error=8'd38; concave_points_error=8'd67; symmetry_error=8'd34; fractal_dimension_error=8'd45; worst_radius=8'd107; worst_texture=8'd126; worst_perimeter=8'd98; worst_area=8'd66; worst_smoothness=8'd198; worst_compactness=8'd130; worst_concavity=8'd150; worst_concave_points=8'd178; worst_symmetry=8'd86; worst_fractal_dimension=8'd152;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 66 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 66 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 67 ──────────────────────────────
        mean_radius=8'd156; mean_texture=8'd123; mean_perimeter=8'd174; mean_area=8'd118; mean_smoothness=8'd175; mean_compactness=8'd255; mean_concavity=8'd224; mean_concave_points=8'd203; mean_symmetry=8'd237; mean_fractal_dimension=8'd169; radius_error=8'd76; texture_error=8'd86; perimeter_error=8'd95; area_error=8'd52; smoothness_error=8'd75; compactness_error=8'd127; concavity_error=8'd70; concave_points_error=8'd125; symmetry_error=8'd255; fractal_dimension_error=8'd45; worst_radius=8'd137; worst_texture=8'd134; worst_perimeter=8'd150; worst_area=8'd89; worst_smoothness=8'd161; worst_compactness=8'd165; worst_concavity=8'd156; worst_concave_points=8'd220; worst_symmetry=8'd195; worst_fractal_dimension=8'd96;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 67 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 67 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 68 ──────────────────────────────
        mean_radius=8'd51; mean_texture=8'd66; mean_perimeter=8'd50; mean_area=8'd28; mean_smoothness=8'd111; mean_compactness=8'd32; mean_concavity=8'd14; mean_concave_points=8'd20; mean_symmetry=8'd75; mean_fractal_dimension=8'd42; radius_error=8'd7; texture_error=8'd88; perimeter_error=8'd3; area_error=8'd4; smoothness_error=8'd53; compactness_error=8'd12; concavity_error=8'd10; concave_points_error=8'd30; symmetry_error=8'd112; fractal_dimension_error=8'd10; worst_radius=8'd36; worst_texture=8'd98; worst_perimeter=8'd33; worst_area=8'd17; worst_smoothness=8'd112; worst_compactness=8'd20; worst_concavity=8'd18; worst_concave_points=8'd38; worst_symmetry=8'd82; worst_fractal_dimension=8'd23;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 68 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 68 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 69 ──────────────────────────────
        mean_radius=8'd66; mean_texture=8'd83; mean_perimeter=8'd66; mean_area=8'd38; mean_smoothness=8'd99; mean_compactness=8'd81; mean_concavity=8'd42; mean_concave_points=8'd37; mean_symmetry=8'd81; mean_fractal_dimension=8'd83; radius_error=8'd14; texture_error=8'd12; perimeter_error=8'd21; area_error=8'd7; smoothness_error=8'd35; compactness_error=8'd58; concavity_error=8'd28; concave_points_error=8'd47; symmetry_error=8'd93; fractal_dimension_error=8'd32; worst_radius=8'd54; worst_texture=8'd67; worst_perimeter=8'd58; worst_area=8'd26; worst_smoothness=8'd100; worst_compactness=8'd83; worst_concavity=8'd70; worst_concave_points=8'd86; worst_symmetry=8'd102; worst_fractal_dimension=8'd79;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 69 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 69 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 70 ──────────────────────────────
        mean_radius=8'd76; mean_texture=8'd108; mean_perimeter=8'd77; mean_area=8'd46; mean_smoothness=8'd155; mean_compactness=8'd94; mean_concavity=8'd83; mean_concave_points=8'd83; mean_symmetry=8'd91; mean_fractal_dimension=8'd101; radius_error=8'd47; texture_error=8'd99; perimeter_error=8'd50; area_error=8'd20; smoothness_error=8'd105; compactness_error=8'd60; concavity_error=8'd30; concave_points_error=8'd100; symmetry_error=8'd90; fractal_dimension_error=8'd30; worst_radius=8'd72; worst_texture=8'd149; worst_perimeter=8'd74; worst_area=8'd37; worst_smoothness=8'd178; worst_compactness=8'd80; worst_concavity=8'd78; worst_concave_points=8'd147; worst_symmetry=8'd76; worst_fractal_dimension=8'd83;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 70 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 70 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 71 ──────────────────────────────
        mean_radius=8'd101; mean_texture=8'd71; mean_perimeter=8'd101; mean_area=8'd67; mean_smoothness=8'd102; mean_compactness=8'd96; mean_concavity=8'd59; mean_concave_points=8'd84; mean_symmetry=8'd92; mean_fractal_dimension=8'd58; radius_error=8'd36; texture_error=8'd35; perimeter_error=8'd34; area_error=8'd23; smoothness_error=8'd35; compactness_error=8'd73; concavity_error=8'd18; concave_points_error=8'd62; symmetry_error=8'd58; fractal_dimension_error=8'd29; worst_radius=8'd109; worst_texture=8'd104; worst_perimeter=8'd106; worst_area=8'd68; worst_smoothness=8'd119; worst_compactness=8'd149; worst_concavity=8'd81; worst_concave_points=8'd159; worst_symmetry=8'd112; worst_fractal_dimension=8'd108;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 71 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 71 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 72 ──────────────────────────────
        mean_radius=8'd80; mean_texture=8'd64; mean_perimeter=8'd76; mean_area=8'd48; mean_smoothness=8'd64; mean_compactness=8'd30; mean_concavity=8'd16; mean_concave_points=8'd41; mean_symmetry=8'd65; mean_fractal_dimension=8'd41; radius_error=8'd4; texture_error=8'd75; perimeter_error=8'd6; area_error=8'd3; smoothness_error=8'd32; compactness_error=8'd20; concavity_error=8'd7; concave_points_error=8'd44; symmetry_error=8'd44; fractal_dimension_error=8'd5; worst_radius=8'd58; worst_texture=8'd91; worst_perimeter=8'd54; worst_area=8'd29; worst_smoothness=8'd61; worst_compactness=8'd27; worst_concavity=8'd17; worst_concave_points=8'd69; worst_symmetry=8'd48; worst_fractal_dimension=8'd24;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 72 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 72 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 73 ──────────────────────────────
        mean_radius=8'd110; mean_texture=8'd90; mean_perimeter=8'd111; mean_area=8'd72; mean_smoothness=8'd105; mean_compactness=8'd119; mean_concavity=8'd107; mean_concave_points=8'd112; mean_symmetry=8'd85; mean_fractal_dimension=8'd71; radius_error=8'd18; texture_error=8'd52; perimeter_error=8'd21; area_error=8'd12; smoothness_error=8'd43; compactness_error=8'd74; concavity_error=8'd35; concave_points_error=8'd88; symmetry_error=8'd43; fractal_dimension_error=8'd33; worst_radius=8'd85; worst_texture=8'd112; worst_perimeter=8'd89; worst_area=8'd48; worst_smoothness=8'd122; worst_compactness=8'd123; worst_concavity=8'd119; worst_concave_points=8'd178; worst_symmetry=8'd75; worst_fractal_dimension=8'd87;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 73 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 73 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 74 ──────────────────────────────
        mean_radius=8'd0; mean_texture=8'd136; mean_perimeter=8'd0; mean_area=8'd1; mean_smoothness=8'd65; mean_compactness=8'd26; mean_concavity=8'd0; mean_concave_points=8'd0; mean_symmetry=8'd96; mean_fractal_dimension=8'd123; radius_error=8'd25; texture_error=8'd62; perimeter_error=8'd21; area_error=8'd6; smoothness_error=8'd95; compactness_error=8'd14; concavity_error=8'd0; concave_points_error=8'd0; symmetry_error=8'd100; fractal_dimension_error=8'd53; worst_radius=8'd4; worst_texture=8'd128; worst_perimeter=8'd3; worst_area=8'd2; worst_smoothness=8'd94; worst_compactness=8'd16; worst_concavity=8'd0; worst_concave_points=8'd0; worst_symmetry=8'd75; worst_fractal_dimension=8'd96;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 74 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 74 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 75 ──────────────────────────────
        mean_radius=8'd72; mean_texture=8'd38; mean_perimeter=8'd71; mean_area=8'd41; mean_smoothness=8'd125; mean_compactness=8'd84; mean_concavity=8'd35; mean_concave_points=8'd67; mean_symmetry=8'd83; mean_fractal_dimension=8'd88; radius_error=8'd4; texture_error=8'd12; perimeter_error=8'd4; area_error=8'd3; smoothness_error=8'd24; compactness_error=8'd23; concavity_error=8'd9; concave_points_error=8'd42; symmetry_error=8'd43; fractal_dimension_error=8'd17; worst_radius=8'd57; worst_texture=8'd43; worst_perimeter=8'd52; worst_area=8'd28; worst_smoothness=8'd118; worst_compactness=8'd62; worst_concavity=8'd38; worst_concave_points=8'd117; worst_symmetry=8'd84; worst_fractal_dimension=8'd83;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 75 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 75 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 76 ──────────────────────────────
        mean_radius=8'd79; mean_texture=8'd100; mean_perimeter=8'd76; mean_area=8'd47; mean_smoothness=8'd88; mean_compactness=8'd44; mean_concavity=8'd9; mean_concave_points=8'd24; mean_symmetry=8'd48; mean_fractal_dimension=8'd45; radius_error=8'd14; texture_error=8'd64; perimeter_error=8'd11; area_error=8'd7; smoothness_error=8'd49; compactness_error=8'd22; concavity_error=8'd5; concave_points_error=8'd48; symmetry_error=8'd23; fractal_dimension_error=8'd18; worst_radius=8'd62; worst_texture=8'd124; worst_perimeter=8'd57; worst_area=8'd31; worst_smoothness=8'd100; worst_compactness=8'd35; worst_concavity=8'd13; worst_concave_points=8'd70; worst_symmetry=8'd33; worst_fractal_dimension=8'd46;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 76 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 76 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 77 ──────────────────────────────
        mean_radius=8'd78; mean_texture=8'd63; mean_perimeter=8'd79; mean_area=8'd47; mean_smoothness=8'd131; mean_compactness=8'd95; mean_concavity=8'd58; mean_concave_points=8'd66; mean_symmetry=8'd101; mean_fractal_dimension=8'd61; radius_error=8'd29; texture_error=8'd25; perimeter_error=8'd22; area_error=8'd14; smoothness_error=8'd40; compactness_error=8'd47; concavity_error=8'd20; concave_points_error=8'd65; symmetry_error=8'd61; fractal_dimension_error=8'd16; worst_radius=8'd72; worst_texture=8'd68; worst_perimeter=8'd69; worst_area=8'd38; worst_smoothness=8'd139; worst_compactness=8'd84; worst_concavity=8'd65; worst_concave_points=8'd120; worst_symmetry=8'd76; worst_fractal_dimension=8'd53;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 77 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 77 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 78 ──────────────────────────────
        mean_radius=8'd38; mean_texture=8'd45; mean_perimeter=8'd37; mean_area=8'd20; mean_smoothness=8'd58; mean_compactness=8'd28; mean_concavity=8'd13; mean_concave_points=8'd10; mean_symmetry=8'd32; mean_fractal_dimension=8'd37; radius_error=8'd13; texture_error=8'd50; perimeter_error=8'd13; area_error=8'd5; smoothness_error=8'd42; compactness_error=8'd30; concavity_error=8'd13; concave_points_error=8'd27; symmetry_error=8'd42; fractal_dimension_error=8'd13; worst_radius=8'd30; worst_texture=8'd59; worst_perimeter=8'd30; worst_area=8'd14; worst_smoothness=8'd63; worst_compactness=8'd27; worst_concavity=8'd20; worst_concave_points=8'd30; worst_symmetry=8'd37; worst_fractal_dimension=8'd27;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 78 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 78 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 79 ──────────────────────────────
        mean_radius=8'd45; mean_texture=8'd28; mean_perimeter=8'd46; mean_area=8'd24; mean_smoothness=8'd164; mean_compactness=8'd80; mean_concavity=8'd47; mean_concave_points=8'd70; mean_symmetry=8'd116; mean_fractal_dimension=8'd103; radius_error=8'd13; texture_error=8'd35; perimeter_error=8'd13; area_error=8'd4; smoothness_error=8'd43; compactness_error=8'd30; concavity_error=8'd14; concave_points_error=8'd56; symmetry_error=8'd63; fractal_dimension_error=8'd25; worst_radius=8'd39; worst_texture=8'd58; worst_perimeter=8'd39; worst_area=8'd16; worst_smoothness=8'd156; worst_compactness=8'd60; worst_concavity=8'd46; worst_concave_points=8'd115; worst_symmetry=8'd89; worst_fractal_dimension=8'd80;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 79 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 79 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 80 ──────────────────────────────
        mean_radius=8'd106; mean_texture=8'd102; mean_perimeter=8'd106; mean_area=8'd70; mean_smoothness=8'd111; mean_compactness=8'd95; mean_concavity=8'd62; mean_concave_points=8'd71; mean_symmetry=8'd135; mean_fractal_dimension=8'd48; radius_error=8'd30; texture_error=8'd51; perimeter_error=8'd25; area_error=8'd18; smoothness_error=8'd27; compactness_error=8'd33; concavity_error=8'd14; concave_points_error=8'd45; symmetry_error=8'd36; fractal_dimension_error=8'd13; worst_radius=8'd101; worst_texture=8'd134; worst_perimeter=8'd97; worst_area=8'd60; worst_smoothness=8'd118; worst_compactness=8'd78; worst_concavity=8'd61; worst_concave_points=8'd115; worst_symmetry=8'd96; worst_fractal_dimension=8'd46;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 80 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 80 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 81 ──────────────────────────────
        mean_radius=8'd44; mean_texture=8'd44; mean_perimeter=8'd43; mean_area=8'd24; mean_smoothness=8'd70; mean_compactness=8'd22; mean_concavity=8'd1; mean_concave_points=8'd4; mean_symmetry=8'd83; mean_fractal_dimension=8'd58; radius_error=8'd10; texture_error=8'd36; perimeter_error=8'd9; area_error=8'd4; smoothness_error=8'd34; compactness_error=8'd9; concavity_error=8'd1; concave_points_error=8'd14; symmetry_error=8'd43; fractal_dimension_error=8'd10; worst_radius=8'd38; worst_texture=8'd68; worst_perimeter=8'd36; worst_area=8'd17; worst_smoothness=8'd79; worst_compactness=8'd20; worst_concavity=8'd1; worst_concave_points=8'd15; worst_symmetry=8'd63; worst_fractal_dimension=8'd41;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 81 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 81 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 82 ──────────────────────────────
        mean_radius=8'd85; mean_texture=8'd101; mean_perimeter=8'd84; mean_area=8'd52; mean_smoothness=8'd96; mean_compactness=8'd70; mean_concavity=8'd72; mean_concave_points=8'd63; mean_symmetry=8'd124; mean_fractal_dimension=8'd34; radius_error=8'd29; texture_error=8'd105; perimeter_error=8'd31; area_error=8'd15; smoothness_error=8'd66; compactness_error=8'd53; concavity_error=8'd35; concave_points_error=8'd85; symmetry_error=8'd78; fractal_dimension_error=8'd21; worst_radius=8'd70; worst_texture=8'd117; worst_perimeter=8'd70; worst_area=8'd37; worst_smoothness=8'd103; worst_compactness=8'd48; worst_concavity=8'd68; worst_concave_points=8'd107; worst_symmetry=8'd73; worst_fractal_dimension=8'd29;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 82 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 82 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 83 ──────────────────────────────
        mean_radius=8'd165; mean_texture=8'd119; mean_perimeter=8'd165; mean_area=8'd131; mean_smoothness=8'd111; mean_compactness=8'd123; mean_concavity=8'd162; mean_concave_points=8'd166; mean_symmetry=8'd141; mean_fractal_dimension=8'd48; radius_error=8'd82; texture_error=8'd26; perimeter_error=8'd67; area_error=8'd62; smoothness_error=8'd31; compactness_error=8'd71; concavity_error=8'd61; concave_points_error=8'd90; symmetry_error=8'd77; fractal_dimension_error=8'd36; worst_radius=8'd158; worst_texture=8'd102; worst_perimeter=8'd144; worst_area=8'd113; worst_smoothness=8'd86; worst_compactness=8'd81; worst_concavity=8'd142; worst_concave_points=8'd184; worst_symmetry=8'd78; worst_fractal_dimension=8'd51;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 83 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 83 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 84 ──────────────────────────────
        mean_radius=8'd128; mean_texture=8'd127; mean_perimeter=8'd122; mean_area=8'd91; mean_smoothness=8'd83; mean_compactness=8'd44; mean_concavity=8'd34; mean_concave_points=8'd60; mean_symmetry=8'd51; mean_fractal_dimension=8'd28; radius_error=8'd29; texture_error=8'd60; perimeter_error=8'd24; area_error=8'd19; smoothness_error=8'd32; compactness_error=8'd18; concavity_error=8'd10; concave_points_error=8'd41; symmetry_error=8'd30; fractal_dimension_error=8'd16; worst_radius=8'd114; worst_texture=8'd154; worst_perimeter=8'd104; worst_area=8'd69; worst_smoothness=8'd104; worst_compactness=8'd43; worst_concavity=8'd42; worst_concave_points=8'd100; worst_symmetry=8'd47; worst_fractal_dimension=8'd53;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 84 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 84 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 85 ──────────────────────────────
        mean_radius=8'd95; mean_texture=8'd65; mean_perimeter=8'd100; mean_area=8'd59; mean_smoothness=8'd186; mean_compactness=8'd183; mean_concavity=8'd146; mean_concave_points=8'd157; mean_symmetry=8'd168; mean_fractal_dimension=8'd140; radius_error=8'd51; texture_error=8'd39; perimeter_error=8'd40; area_error=8'd25; smoothness_error=8'd73; compactness_error=8'd84; concavity_error=8'd32; concave_points_error=8'd103; symmetry_error=8'd52; fractal_dimension_error=8'd68; worst_radius=8'd84; worst_texture=8'd72; worst_perimeter=8'd85; worst_area=8'd45; worst_smoothness=8'd182; worst_compactness=8'd118; worst_concavity=8'd90; worst_concave_points=8'd195; worst_symmetry=8'd85; worst_fractal_dimension=8'd138;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 85 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 85 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 86 ──────────────────────────────
        mean_radius=8'd60; mean_texture=8'd124; mean_perimeter=8'd65; mean_area=8'd33; mean_smoothness=8'd152; mean_compactness=8'd192; mean_concavity=8'd136; mean_concave_points=8'd108; mean_symmetry=8'd117; mean_fractal_dimension=8'd174; radius_error=8'd17; texture_error=8'd70; perimeter_error=8'd15; area_error=8'd8; smoothness_error=8'd47; compactness_error=8'd134; concavity_error=8'd50; concave_points_error=8'd69; symmetry_error=8'd48; fractal_dimension_error=8'd81; worst_radius=8'd60; worst_texture=8'd195; worst_perimeter=8'd56; worst_area=8'd31; worst_smoothness=8'd198; worst_compactness=8'd255; worst_concavity=8'd225; worst_concave_points=8'd194; worst_symmetry=8'd141; worst_fractal_dimension=8'd255;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 86 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 86 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 87 ──────────────────────────────
        mean_radius=8'd124; mean_texture=8'd117; mean_perimeter=8'd129; mean_area=8'd89; mean_smoothness=8'd93; mean_compactness=8'd158; mean_concavity=8'd128; mean_concave_points=8'd127; mean_symmetry=8'd72; mean_fractal_dimension=8'd127; radius_error=8'd75; texture_error=8'd62; perimeter_error=8'd61; area_error=8'd47; smoothness_error=8'd44; compactness_error=8'd130; concavity_error=8'd42; concave_points_error=8'd112; symmetry_error=8'd42; fractal_dimension_error=8'd92; worst_radius=8'd120; worst_texture=8'd115; worst_perimeter=8'd116; worst_area=8'd77; worst_smoothness=8'd86; worst_compactness=8'd126; worst_concavity=8'd105; worst_concave_points=8'd175; worst_symmetry=8'd37; worst_fractal_dimension=8'd146;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 87 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 87 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 88 ──────────────────────────────
        mean_radius=8'd54; mean_texture=8'd112; mean_perimeter=8'd56; mean_area=8'd30; mean_smoothness=8'd38; mean_compactness=8'd77; mean_concavity=8'd47; mean_concave_points=8'd38; mean_symmetry=8'd5; mean_fractal_dimension=8'd89; radius_error=8'd1; texture_error=8'd61; perimeter_error=8'd12; area_error=8'd1; smoothness_error=8'd29; compactness_error=8'd83; concavity_error=8'd28; concave_points_error=8'd81; symmetry_error=8'd80; fractal_dimension_error=8'd57; worst_radius=8'd36; worst_texture=8'd113; worst_perimeter=8'd43; worst_area=8'd17; worst_smoothness=8'd29; worst_compactness=8'd82; worst_concavity=8'd59; worst_concave_points=8'd96; worst_symmetry=8'd31; worst_fractal_dimension=8'd83;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 88 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 88 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 89 ──────────────────────────────
        mean_radius=8'd65; mean_texture=8'd31; mean_perimeter=8'd63; mean_area=8'd37; mean_smoothness=8'd140; mean_compactness=8'd60; mean_concavity=8'd23; mean_concave_points=8'd43; mean_symmetry=8'd51; mean_fractal_dimension=8'd79; radius_error=8'd10; texture_error=8'd38; perimeter_error=8'd10; area_error=8'd5; smoothness_error=8'd36; compactness_error=8'd34; concavity_error=8'd12; concave_points_error=8'd49; symmetry_error=8'd20; fractal_dimension_error=8'd19; worst_radius=8'd50; worst_texture=8'd62; worst_perimeter=8'd50; worst_area=8'd24; worst_smoothness=8'd145; worst_compactness=8'd55; worst_concavity=8'd36; worst_concave_points=8'd101; worst_symmetry=8'd41; worst_fractal_dimension=8'd66;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 89 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 89 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 90 ──────────────────────────────
        mean_radius=8'd54; mean_texture=8'd51; mean_perimeter=8'd53; mean_area=8'd30; mean_smoothness=8'd103; mean_compactness=8'd46; mean_concavity=8'd25; mean_concave_points=8'd24; mean_symmetry=8'd124; mean_fractal_dimension=8'd52; radius_error=8'd11; texture_error=8'd50; perimeter_error=8'd8; area_error=8'd4; smoothness_error=8'd37; compactness_error=8'd30; concavity_error=8'd13; concave_points_error=8'd34; symmetry_error=8'd56; fractal_dimension_error=8'd15; worst_radius=8'd47; worst_texture=8'd88; worst_perimeter=8'd43; worst_area=8'd22; worst_smoothness=8'd115; worst_compactness=8'd48; worst_concavity=8'd46; worst_concave_points=8'd67; worst_symmetry=8'd91; worst_fractal_dimension=8'd52;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 90 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 90 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 91 ──────────────────────────────
        mean_radius=8'd72; mean_texture=8'd78; mean_perimeter=8'd72; mean_area=8'd42; mean_smoothness=8'd126; mean_compactness=8'd82; mean_concavity=8'd25; mean_concave_points=8'd40; mean_symmetry=8'd76; mean_fractal_dimension=8'd71; radius_error=8'd8; texture_error=8'd14; perimeter_error=8'd8; area_error=8'd4; smoothness_error=8'd23; compactness_error=8'd23; concavity_error=8'd10; concave_points_error=8'd36; symmetry_error=8'd27; fractal_dimension_error=8'd8; worst_radius=8'd62; worst_texture=8'd89; worst_perimeter=8'd61; worst_area=8'd31; worst_smoothness=8'd158; worst_compactness=8'd80; worst_concavity=8'd54; worst_concave_points=8'd125; worst_symmetry=8'd98; worst_fractal_dimension=8'd68;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 91 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 91 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 92 ──────────────────────────────
        mean_radius=8'd92; mean_texture=8'd61; mean_perimeter=8'd92; mean_area=8'd57; mean_smoothness=8'd106; mean_compactness=8'd102; mean_concavity=8'd46; mean_concave_points=8'd78; mean_symmetry=8'd68; mean_fractal_dimension=8'd101; radius_error=8'd24; texture_error=8'd27; perimeter_error=8'd19; area_error=8'd13; smoothness_error=8'd21; compactness_error=8'd31; concavity_error=8'd13; concave_points_error=8'd48; symmetry_error=8'd13; fractal_dimension_error=8'd21; worst_radius=8'd75; worst_texture=8'd57; worst_perimeter=8'd72; worst_area=8'd40; worst_smoothness=8'd73; worst_compactness=8'd53; worst_concavity=8'd38; worst_concave_points=8'd89; worst_symmetry=8'd31; worst_fractal_dimension=8'd66;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 92 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 92 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 93 ──────────────────────────────
        mean_radius=8'd44; mean_texture=8'd170; mean_perimeter=8'd41; mean_area=8'd24; mean_smoothness=8'd50; mean_compactness=8'd14; mean_concavity=8'd0; mean_concave_points=8'd0; mean_symmetry=8'd0; mean_fractal_dimension=8'd27; radius_error=8'd19; texture_error=8'd199; perimeter_error=8'd15; area_error=8'd8; smoothness_error=8'd51; compactness_error=8'd13; concavity_error=8'd0; concave_points_error=8'd0; symmetry_error=8'd57; fractal_dimension_error=8'd8; worst_radius=8'd30; worst_texture=8'd179; worst_perimeter=8'd27; worst_area=8'd14; worst_smoothness=8'd37; worst_compactness=8'd8; worst_concavity=8'd0; worst_concave_points=8'd0; worst_symmetry=8'd0; worst_fractal_dimension=8'd9;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 93 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 93 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 94 ──────────────────────────────
        mean_radius=8'd44; mean_texture=8'd88; mean_perimeter=8'd44; mean_area=8'd24; mean_smoothness=8'd121; mean_compactness=8'd42; mean_concavity=8'd3; mean_concave_points=8'd10; mean_symmetry=8'd105; mean_fractal_dimension=8'd55; radius_error=8'd17; texture_error=8'd90; perimeter_error=8'd14; area_error=8'd6; smoothness_error=8'd97; compactness_error=8'd17; concavity_error=8'd2; concave_points_error=8'd24; symmetry_error=8'd164; fractal_dimension_error=8'd9; worst_radius=8'd31; worst_texture=8'd94; worst_perimeter=8'd29; worst_area=8'd13; worst_smoothness=8'd123; worst_compactness=8'd19; worst_concavity=8'd3; worst_concave_points=8'd18; worst_symmetry=8'd87; worst_fractal_dimension=8'd22;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 94 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 94 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 95 ──────────────────────────────
        mean_radius=8'd26; mean_texture=8'd63; mean_perimeter=8'd26; mean_area=8'd13; mean_smoothness=8'd118; mean_compactness=8'd56; mean_concavity=8'd26; mean_concave_points=8'd23; mean_symmetry=8'd57; mean_fractal_dimension=8'd111; radius_error=8'd27; texture_error=8'd60; perimeter_error=8'd24; area_error=8'd8; smoothness_error=8'd105; compactness_error=8'd52; concavity_error=8'd18; concave_points_error=8'd49; symmetry_error=8'd119; fractal_dimension_error=8'd33; worst_radius=8'd22; worst_texture=8'd64; worst_perimeter=8'd22; worst_area=8'd9; worst_smoothness=8'd131; worst_compactness=8'd42; worst_concavity=8'd26; worst_concave_points=8'd47; worst_symmetry=8'd49; worst_fractal_dimension=8'd64;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 95 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 95 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 96 ──────────────────────────────
        mean_radius=8'd155; mean_texture=8'd160; mean_perimeter=8'd151; mean_area=8'd119; mean_smoothness=8'd104; mean_compactness=8'd73; mean_concavity=8'd86; mean_concave_points=8'd124; mean_symmetry=8'd80; mean_fractal_dimension=8'd29; radius_error=8'd60; texture_error=8'd119; perimeter_error=8'd53; area_error=8'd44; smoothness_error=8'd35; compactness_error=8'd42; concavity_error=8'd25; concave_points_error=8'd81; symmetry_error=8'd53; fractal_dimension_error=8'd14; worst_radius=8'd140; worst_texture=8'd178; worst_perimeter=8'd130; worst_area=8'd95; worst_smoothness=8'd79; worst_compactness=8'd46; worst_concavity=8'd65; worst_concave_points=8'd143; worst_symmetry=8'd51; worst_fractal_dimension=8'd24;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 96 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 96 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 97 ──────────────────────────────
        mean_radius=8'd76; mean_texture=8'd121; mean_perimeter=8'd79; mean_area=8'd47; mean_smoothness=8'd183; mean_compactness=8'd137; mean_concavity=8'd93; mean_concave_points=8'd116; mean_symmetry=8'd148; mean_fractal_dimension=8'd130; radius_error=8'd42; texture_error=8'd88; perimeter_error=8'd38; area_error=8'd22; smoothness_error=8'd62; compactness_error=8'd55; concavity_error=8'd20; concave_points_error=8'd62; symmetry_error=8'd58; fractal_dimension_error=8'd32; worst_radius=8'd98; worst_texture=8'd203; worst_perimeter=8'd96; worst_area=8'd59; worst_smoothness=8'd255; worst_compactness=8'd138; worst_concavity=8'd95; worst_concave_points=8'd176; worst_symmetry=8'd144; worst_fractal_dimension=8'd116;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 97 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 97 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 98 ──────────────────────────────
        mean_radius=8'd43; mean_texture=8'd29; mean_perimeter=8'd42; mean_area=8'd23; mean_smoothness=8'd103; mean_compactness=8'd28; mean_concavity=8'd12; mean_concave_points=8'd23; mean_symmetry=8'd90; mean_fractal_dimension=8'd60; radius_error=8'd10; texture_error=8'd24; perimeter_error=8'd8; area_error=8'd4; smoothness_error=8'd63; compactness_error=8'd13; concavity_error=8'd8; concave_points_error=8'd40; symmetry_error=8'd76; fractal_dimension_error=8'd6; worst_radius=8'd31; worst_texture=8'd29; worst_perimeter=8'd28; worst_area=8'd14; worst_smoothness=8'd109; worst_compactness=8'd17; worst_concavity=8'd14; worst_concave_points=8'd48; worst_symmetry=8'd65; worst_fractal_dimension=8'd27;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 98 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 98 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 99 ──────────────────────────────
        mean_radius=8'd120; mean_texture=8'd135; mean_perimeter=8'd117; mean_area=8'd83; mean_smoothness=8'd71; mean_compactness=8'd80; mean_concavity=8'd72; mean_concave_points=8'd73; mean_symmetry=8'd41; mean_fractal_dimension=8'd22; radius_error=8'd37; texture_error=8'd74; perimeter_error=8'd30; area_error=8'd25; smoothness_error=8'd55; compactness_error=8'd78; concavity_error=8'd32; concave_points_error=8'd84; symmetry_error=8'd38; fractal_dimension_error=8'd25; worst_radius=8'd109; worst_texture=8'd159; worst_perimeter=8'd102; worst_area=8'd67; worst_smoothness=8'd125; worst_compactness=8'd108; worst_concavity=8'd103; worst_concave_points=8'd152; worst_symmetry=8'd47; worst_fractal_dimension=8'd53;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 99 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 99 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 100 ──────────────────────────────
        mean_radius=8'd100; mean_texture=8'd91; mean_perimeter=8'd97; mean_area=8'd65; mean_smoothness=8'd100; mean_compactness=8'd60; mean_concavity=8'd39; mean_concave_points=8'd66; mean_symmetry=8'd61; mean_fractal_dimension=8'd30; radius_error=8'd24; texture_error=8'd45; perimeter_error=8'd20; area_error=8'd16; smoothness_error=8'd25; compactness_error=8'd39; concavity_error=8'd13; concave_points_error=8'd47; symmetry_error=8'd36; fractal_dimension_error=8'd14; worst_radius=8'd107; worst_texture=8'd141; worst_perimeter=8'd97; worst_area=8'd66; worst_smoothness=8'd122; worst_compactness=8'd92; worst_concavity=8'd59; worst_concave_points=8'd135; worst_symmetry=8'd94; worst_fractal_dimension=8'd68;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 100 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 100 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 101 ──────────────────────────────
        mean_radius=8'd26; mean_texture=8'd19; mean_perimeter=8'd24; mean_area=8'd13; mean_smoothness=8'd92; mean_compactness=8'd19; mean_concavity=8'd0; mean_concave_points=8'd0; mean_symmetry=8'd100; mean_fractal_dimension=8'd77; radius_error=8'd8; texture_error=8'd8; perimeter_error=8'd6; area_error=8'd3; smoothness_error=8'd38; compactness_error=8'd7; concavity_error=8'd0; concave_points_error=8'd0; symmetry_error=8'd71; fractal_dimension_error=8'd20; worst_radius=8'd18; worst_texture=8'd14; worst_perimeter=8'd16; worst_area=8'd8; worst_smoothness=8'd90; worst_compactness=8'd13; worst_concavity=8'd0; worst_concave_points=8'd0; worst_symmetry=8'd77; worst_fractal_dimension=8'd57;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 101 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 101 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 102 ──────────────────────────────
        mean_radius=8'd129; mean_texture=8'd56; mean_perimeter=8'd131; mean_area=8'd91; mean_smoothness=8'd124; mean_compactness=8'd170; mean_concavity=8'd101; mean_concave_points=8'd137; mean_symmetry=8'd134; mean_fractal_dimension=8'd90; radius_error=8'd80; texture_error=8'd11; perimeter_error=8'd67; area_error=8'd61; smoothness_error=8'd54; compactness_error=8'd108; concavity_error=8'd30; concave_points_error=8'd100; symmetry_error=8'd86; fractal_dimension_error=8'd54; worst_radius=8'd128; worst_texture=8'd47; worst_perimeter=8'd124; worst_area=8'd88; worst_smoothness=8'd133; worst_compactness=8'd150; worst_concavity=8'd77; worst_concave_points=8'd184; worst_symmetry=8'd110; worst_fractal_dimension=8'd121;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 102 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 102 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 103 ──────────────────────────────
        mean_radius=8'd129; mean_texture=8'd94; mean_perimeter=8'd127; mean_area=8'd90; mean_smoothness=8'd117; mean_compactness=8'd97; mean_concavity=8'd72; mean_concave_points=8'd112; mean_symmetry=8'd112; mean_fractal_dimension=8'd58; radius_error=8'd32; texture_error=8'd29; perimeter_error=8'd28; area_error=8'd20; smoothness_error=8'd48; compactness_error=8'd49; concavity_error=8'd16; concave_points_error=8'd71; symmetry_error=8'd30; fractal_dimension_error=8'd22; worst_radius=8'd116; worst_texture=8'd91; worst_perimeter=8'd108; worst_area=8'd71; worst_smoothness=8'd133; worst_compactness=8'd97; worst_concavity=8'd67; worst_concave_points=8'd173; worst_symmetry=8'd75; worst_fractal_dimension=8'd65;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 103 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 103 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 104 ──────────────────────────────
        mean_radius=8'd39; mean_texture=8'd125; mean_perimeter=8'd38; mean_area=8'd21; mean_smoothness=8'd67; mean_compactness=8'd41; mean_concavity=8'd9; mean_concave_points=8'd10; mean_symmetry=8'd110; mean_fractal_dimension=8'd72; radius_error=8'd38; texture_error=8'd88; perimeter_error=8'd34; area_error=8'd12; smoothness_error=8'd57; compactness_error=8'd32; concavity_error=8'd8; concave_points_error=8'd29; symmetry_error=8'd80; fractal_dimension_error=8'd18; worst_radius=8'd41; worst_texture=8'd132; worst_perimeter=8'd38; worst_area=8'd18; worst_smoothness=8'd85; worst_compactness=8'd38; worst_concavity=8'd13; worst_concave_points=8'd29; worst_symmetry=8'd75; worst_fractal_dimension=8'd46;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 104 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 104 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 105 ──────────────────────────────
        mean_radius=8'd51; mean_texture=8'd68; mean_perimeter=8'd51; mean_area=8'd28; mean_smoothness=8'd126; mean_compactness=8'd68; mean_concavity=8'd32; mean_concave_points=8'd56; mean_symmetry=8'd59; mean_fractal_dimension=8'd90; radius_error=8'd30; texture_error=8'd87; perimeter_error=8'd29; area_error=8'd11; smoothness_error=8'd42; compactness_error=8'd30; concavity_error=8'd11; concave_points_error=8'd64; symmetry_error=8'd50; fractal_dimension_error=8'd13; worst_radius=8'd45; worst_texture=8'd108; worst_perimeter=8'd44; worst_area=8'd21; worst_smoothness=8'd110; worst_compactness=8'd44; worst_concavity=8'd28; worst_concave_points=8'd89; worst_symmetry=8'd46; worst_fractal_dimension=8'd49;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 105 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 105 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 106 ──────────────────────────────
        mean_radius=8'd58; mean_texture=8'd108; mean_perimeter=8'd58; mean_area=8'd32; mean_smoothness=8'd112; mean_compactness=8'd72; mean_concavity=8'd32; mean_concave_points=8'd36; mean_symmetry=8'd52; mean_fractal_dimension=8'd95; radius_error=8'd17; texture_error=8'd73; perimeter_error=8'd14; area_error=8'd7; smoothness_error=8'd83; compactness_error=8'd56; concavity_error=8'd20; concave_points_error=8'd55; symmetry_error=8'd52; fractal_dimension_error=8'd39; worst_radius=8'd46; worst_texture=8'd113; worst_perimeter=8'd43; worst_area=8'd21; worst_smoothness=8'd128; worst_compactness=8'd58; worst_concavity=8'd34; worst_concave_points=8'd72; worst_symmetry=8'd35; worst_fractal_dimension=8'd77;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 106 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 106 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 107 ──────────────────────────────
        mean_radius=8'd192; mean_texture=8'd87; mean_perimeter=8'd189; mean_area=8'd165; mean_smoothness=8'd94; mean_compactness=8'd94; mean_concavity=8'd100; mean_concave_points=8'd127; mean_symmetry=8'd46; mean_fractal_dimension=8'd26; radius_error=8'd109; texture_error=8'd22; perimeter_error=8'd107; area_error=8'd83; smoothness_error=8'd35; compactness_error=8'd60; concavity_error=8'd26; concave_points_error=8'd104; symmetry_error=8'd67; fractal_dimension_error=8'd18; worst_radius=8'd206; worst_texture=8'd81; worst_perimeter=8'd204; worst_area=8'd162; worst_smoothness=8'd84; worst_compactness=8'd94; worst_concavity=8'd77; worst_concave_points=8'd198; worst_symmetry=8'd68; worst_fractal_dimension=8'd38;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 107 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 107 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 108 ──────────────────────────────
        mean_radius=8'd84; mean_texture=8'd47; mean_perimeter=8'd84; mean_area=8'd51; mean_smoothness=8'd108; mean_compactness=8'd72; mean_concavity=8'd51; mean_concave_points=8'd70; mean_symmetry=8'd76; mean_fractal_dimension=8'd58; radius_error=8'd12; texture_error=8'd21; perimeter_error=8'd16; area_error=8'd7; smoothness_error=8'd35; compactness_error=8'd40; concavity_error=8'd20; concave_points_error=8'd72; symmetry_error=8'd32; fractal_dimension_error=8'd14; worst_radius=8'd67; worst_texture=8'd53; worst_perimeter=8'd70; worst_area=8'd34; worst_smoothness=8'd105; worst_compactness=8'd69; worst_concavity=8'd63; worst_concave_points=8'd140; worst_symmetry=8'd57; worst_fractal_dimension=8'd47;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 108 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 108 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 109 ──────────────────────────────
        mean_radius=8'd87; mean_texture=8'd62; mean_perimeter=8'd84; mean_area=8'd54; mean_smoothness=8'd78; mean_compactness=8'd42; mean_concavity=8'd31; mean_concave_points=8'd35; mean_symmetry=8'd33; mean_fractal_dimension=8'd19; radius_error=8'd10; texture_error=8'd36; perimeter_error=8'd9; area_error=8'd6; smoothness_error=8'd16; compactness_error=8'd22; concavity_error=8'd12; concave_points_error=8'd30; symmetry_error=8'd22; fractal_dimension_error=8'd3; worst_radius=8'd73; worst_texture=8'd91; worst_perimeter=8'd67; worst_area=8'd38; worst_smoothness=8'd75; worst_compactness=8'd50; worst_concavity=8'd50; worst_concave_points=8'd69; worst_symmetry=8'd45; worst_fractal_dimension=8'd24;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 109 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 109 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 110 ──────────────────────────────
        mean_radius=8'd105; mean_texture=8'd86; mean_perimeter=8'd102; mean_area=8'd71; mean_smoothness=8'd90; mean_compactness=8'd57; mean_concavity=8'd58; mean_concave_points=8'd84; mean_symmetry=8'd86; mean_fractal_dimension=8'd21; radius_error=8'd59; texture_error=8'd37; perimeter_error=8'd51; area_error=8'd35; smoothness_error=8'd79; compactness_error=8'd38; concavity_error=8'd23; concave_points_error=8'd87; symmetry_error=8'd36; fractal_dimension_error=8'd9; worst_radius=8'd103; worst_texture=8'd85; worst_perimeter=8'd96; worst_area=8'd63; worst_smoothness=8'd137; worst_compactness=8'd50; worst_concavity=8'd58; worst_concave_points=8'd133; worst_symmetry=8'd55; worst_fractal_dimension=8'd19;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 110 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 110 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 111 ──────────────────────────────
        mean_radius=8'd48; mean_texture=8'd45; mean_perimeter=8'd47; mean_area=8'd26; mean_smoothness=8'd112; mean_compactness=8'd51; mean_concavity=8'd26; mean_concave_points=8'd37; mean_symmetry=8'd97; mean_fractal_dimension=8'd63; radius_error=8'd13; texture_error=8'd38; perimeter_error=8'd11; area_error=8'd6; smoothness_error=8'd43; compactness_error=8'd19; concavity_error=8'd14; concave_points_error=8'd49; symmetry_error=8'd42; fractal_dimension_error=8'd17; worst_radius=8'd37; worst_texture=8'd62; worst_perimeter=8'd34; worst_area=8'd17; worst_smoothness=8'd117; worst_compactness=8'd37; worst_concavity=8'd37; worst_concave_points=8'd84; worst_symmetry=8'd55; worst_fractal_dimension=8'd50;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 111 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 111 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 112 ──────────────────────────────
        mean_radius=8'd82; mean_texture=8'd156; mean_perimeter=8'd81; mean_area=8'd50; mean_smoothness=8'd68; mean_compactness=8'd74; mean_concavity=8'd66; mean_concave_points=8'd56; mean_symmetry=8'd24; mean_fractal_dimension=8'd61; radius_error=8'd21; texture_error=8'd111; perimeter_error=8'd16; area_error=8'd11; smoothness_error=8'd40; compactness_error=8'd50; concavity_error=8'd25; concave_points_error=8'd49; symmetry_error=8'd19; fractal_dimension_error=8'd24; worst_radius=8'd66; worst_texture=8'd194; worst_perimeter=8'd62; worst_area=8'd34; worst_smoothness=8'd64; worst_compactness=8'd60; worst_concavity=8'd62; worst_concave_points=8'd72; worst_symmetry=8'd16; worst_fractal_dimension=8'd50;
        expected = 1'b1; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 112 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 112 | got=%0d | exp=%0d", predicted_class, expected);
        end

        // ── Test 113 ──────────────────────────────
        mean_radius=8'd163; mean_texture=8'd185; mean_perimeter=8'd159; mean_area=8'd137; mean_smoothness=8'd97; mean_compactness=8'd83; mean_concavity=8'd82; mean_concave_points=8'd110; mean_symmetry=8'd82; mean_fractal_dimension=8'd36; radius_error=8'd98; texture_error=8'd71; perimeter_error=8'd84; area_error=8'd92; smoothness_error=8'd25; compactness_error=8'd24; concavity_error=8'd14; concave_points_error=8'd45; symmetry_error=8'd28; fractal_dimension_error=8'd12; worst_radius=8'd222; worst_texture=8'd239; worst_perimeter=8'd207; worst_area=8'd203; worst_smoothness=8'd119; worst_compactness=8'd66; worst_concavity=8'd70; worst_concave_points=8'd145; worst_symmetry=8'd65; worst_fractal_dimension=8'd59;
        expected = 1'b0; #20;
        if(predicted_class==expected) begin
            pass_count = pass_count + 1;
            $display("PASS 113 | got=%0d | exp=%0d", predicted_class, expected);
        end else begin
            $display("FAIL 113 | got=%0d | exp=%0d", predicted_class, expected);
        end

        $display("─────────────────────────────────────");
        $display("Hardware Accuracy: %0d / 114", pass_count);
        $display("─────────────────────────────────────");
        $finish;
    end

endmodule