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
            a= .5 * obj.s1 * obj.s2 *sin(obj.a0);
        end
        function p = perimeter(obj)
            p = obj.s1 + obj.s2 + sqrt((obj.s2^2 +obj.s1^2)-2*(obj.s2*obj.s1)*cos(obj.a0));
        end
    end 
end
commit then push when done 