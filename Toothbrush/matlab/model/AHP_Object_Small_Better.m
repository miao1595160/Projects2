function [matrix] = AHP_Object_Small_Better(vector)

for i = 1:length(vector)
        % build a new matrix by adding zeros at beginning of each row
        matrix_temp(i,:) = [zeros(1,i-1) vector(i:end)];
        % use algoritm to define scores
        for j = i:length(matrix_temp(i,:))
            % increment algorithm
            vector_incre(j) = (vector(j) - vector(i))/ vector(i);
            % calculate corresponding score
            vector_incre(j) = AHP_Score_Small_Better(vector_incre(j));
            % build new matrix
            matrix(i,j) = vector_incre(j);
        end

end
end