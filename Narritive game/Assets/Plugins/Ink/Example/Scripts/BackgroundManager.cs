using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BackgroundManager : MonoBehaviour
{

	public Sprite WMap;
	public Sprite Downtown;
	//to do: Add all scenes.


	public Image backgroundViewer;
	
	public void TagReader(List<string> tags)
	{
		foreach (var tag in tags)
		{
			print(tag);
		}
	}
	
}
