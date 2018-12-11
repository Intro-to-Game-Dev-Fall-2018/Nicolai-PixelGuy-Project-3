using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.UI;



public class Typewriter : MonoBehaviour
{


	public Text displayedText;
	public Text inputText;

	private string outputString = null;
	private int i = -1;
	private bool done;
	
	
	void Update () {
		if (!done)
		{
			displayedText.text = Typewrite(inputText.text);
		}
	}

	private string Typewrite(string text)
	{
		i++;
		char[] characters = text.ToCharArray();
		outputString = outputString + characters[i].ToString();
		if (i == (characters.Length - 1))
		{
			done = true;
		}
		return outputString;
	}
	

}
