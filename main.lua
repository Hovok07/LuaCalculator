local Calculator = {};

--oop structure cuz why not????
function Calculator:new(num1, num2)
    self.num1 = num1 or 1;
    self.num2 = num2 or 3;
    
    return setmetatable(Calculator, {});
end


local function ErrorHandling(x, y)
    assert(type(x) == "number", "values needs to be a number ");
    assert(type(y) == "number", "values needs to be a number");
end

function Calculator:Addition()
    ErrorHandling(self.num1, self.num2);
    
    return self.num1 + self.num2;
end

function Calculator:Subtraction()
    ErrorHandling(self.num1, self.num2);
    
    return self.num1 - self.num2;
end

function Calculator:Division()
    ErrorHandling(self.num1, self.num2);
    
    
    return self.num1 / self.num2;
end

function Calculator:Multiplication()
    ErrorHandling(self.num1, self.num2);
    
    
    return  self.num1 * self.num2
end


local something = Calculator:new(6,6);

