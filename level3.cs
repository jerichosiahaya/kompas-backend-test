using System;

public class BracketChecker
{
    public static void Main(string[] args)
    {
        string output = "True";
        var brackets = new [] {"{", "}", "[", "]", "(", ")"};
        Console.Write ("Input string: ");
        string input = Console.ReadLine();
        foreach (string bracket in brackets) {
            if (input.Contains(bracket)) {
                output = "True";
            } else {
                output = "False";
            }
        }
        Console.Write(output);
    }
}