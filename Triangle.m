classdef Triangle 
    properties
        s1 {mustBeNumeric, mustBeScalarOrEmpty}
        s2 {mustBeNumeric, mustBeScalarOrEmpty}
        a0 {mustBeNumeric, mustBeScalarOrEmpty}
    end
    methods 

        function obj= Triangle(s1,s2,a0)
            obj.s1 = s1;
            obj.s2 = s2;
            obj.a0 = a0;
        end

        function a = area(obj)
            h= sin(obj.a0) * obj.s2;
            base1 = sqrt(obj.s2^2 - h^2);
            area1= .5 * base1 * h;
            area2= .5 * ( abs(obj.s1-base1))* h;
            a = area1 + area2;
        end
        function p = perimeter(obj)
            p = obj.s1 + obj.s2 + sqrt(obj.s2^2 - (sin(obj.a0) * obj.s2)^2);
        end
    end 
end
commit then push when done 