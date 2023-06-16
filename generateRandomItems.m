function output = generateRandomItems(count_cus, minItem, maxItem, rngType)
    randomItem = zeros(1, count_cus);

    % Generate random items based on the selected generator type
    switch rngType
        case 1 % Additive LCG
            % Define parameters for Additive LCG
            seed = 123;  % Seed value
            a = 7;      % Multiplier
            c = 13;     % Increment
            m = 100;    % Modulus

            % Generate random items using Additive LCG
            for i = 1:count_cus
                seed = mod(a * seed + c, m);
                randomItem(i) = minItem + mod(seed, (maxItem - minItem + 1));
            end

        case 2 % Multiplication LCG
            % Define parameters for Multiplication LCG
            seed = 456;  % Seed value
            a = 5;       % Multiplier
            m = 97;      % Modulus

            % Generate random items using Multiplication LCG
            for i = 1:count_cus
                seed = mod(a * seed, m);
                randomItem(i) = minItem + mod(seed, (maxItem - minItem + 1));
            end

        case 3 % Random Variate Generator for Exponential Distribution
            % Define parameters for Exponential Distribution
            lambda = 0.5;  % Lambda parameter

            % Generate random items using Exponential Distribution
            for i = 1:count_cus
                randomItem(i) = exprnd(1/lambda) * (maxItem - minItem + 1) + minItem;
            end

        case 4 % Random Variate Generator for Uniform Distribution
            % Generate random items using Uniform Distribution
            for i = 1:count_cus
                randomItem(i) = rand() * (maxItem - minItem + 1) + minItem;
            end

        otherwise
            error('Invalid option selected.');
    end
    
    output = randomItem;
end
