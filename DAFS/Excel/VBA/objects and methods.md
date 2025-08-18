<h2><strong>What Are VBA Objects?</strong></h2>
<p>The <strong>VBA</strong> (Visual Basic Application) is an object-oriented programming language. The object is one of the elements of VBA.</p>
<p>An object has its property and method. The method is the operation performed by that object and the property explains the characteristics of that object.</p>
<hr>
<h2><strong>Attributes of VBA Objects</strong></h2>
<p>To apply a VBA object, there must be a method or property in the Object. We will discuss those attributes here.</p>
<p><span style="text-decoration: underline; color: #008000; font-size: 14pt;"><strong>Properties</strong></span></p>
<p>Excel has many objects. Most of the objects in Excel VBA we work with have properties.</p>
<p><span style="text-decoration: underline; color: #000000;"><span style="font-size: 14pt;"><strong>Example:</strong></span></span></p>
<ul>
<li><strong>Range object</strong> has properties. Some of them are <strong>Column</strong>, <strong>Formula</strong>, <strong>Row</strong>, <strong>Width</strong>, and <strong>Value</strong>.</li>
<li>A <strong>Chart</strong> object has properties, such as <strong>Legend</strong>, <strong>ChartArea</strong>, <strong>ChartStyle</strong>, and so on.</li>
<li><strong>ChartTitle</strong> is also an object, with properties such as <strong>Font</strong>, <strong>Format</strong>, and <strong>Border</strong>.</li>
</ul>
<p><span style="text-decoration: underline; color: #000000;"><span style="font-size: 14pt;"><strong>Use of VBA Object Properties:</strong></span></span></p>
<p>We can write VBA code to do the following:</p>
<ul>
<li>You can examine an object’s current property settings and do something based on these settings.</li>
<li>You can change the object’s property settings by setting new values.</li>
</ul>
<p>Look at this VBA statement:</p>
<p><code class="language-visual-basic">Range<span class="token punctuation">(</span><span class="token string">"E10"</span><span class="token punctuation">)</span><span class="token punctuation">.</span>Value</code></p>
<p>In this statement, <strong>Range</strong> is an object, <strong>Value</strong> is one of the properties. In the VBA statement, objects and properties are placed side by side separating them by a <strong>period</strong> (<strong>.</strong>). Objects are placed first, then their properties.</p>
<p>For example, the following VBA statement sets the <strong>Value</strong> property of <strong>Range E10:100</strong>.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic">Range<span class="token punctuation">(</span><span class="token string">"E10"</span><span class="token punctuation">)</span><span class="token punctuation">.</span>Value <span class="token operator">=</span> <span class="token number">100</span> </code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p>That statement will cause the number <strong>100 </strong>to display in <strong>Cell E10</strong>.</p>
<hr>
<p><span style="text-decoration: underline; color: #008000; font-size: 14pt;"><strong>Methods:</strong></span></p>
<div class="mb30 wpsm_box solid_border_type nonefloat_box" style="text-align:center; width:auto"><i></i><div>
			
<span style="font-size: 14pt;">A <strong>method</strong> is an action implemented on an object.</span><br>
<p>Objects also have methods. For example, <strong>Range</strong> objects have a <strong>Clear</strong> method. The following VBA statement clears a <strong>Range</strong>. This statement is equivalent to selecting the <strong>Range</strong> and then choosing <strong>Home ➪ Editing ➪ Clear ➪ Clear All</strong>:</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic">Range<span class="token punctuation">(</span><span class="token string">"A10:C20"</span><span class="token punctuation">)</span><span class="token punctuation">.</span>Clear</code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy">
<div id="AdThrive_Content_2_desktop" class="adthrive-ad  adthrive-content adthrive-content-2" style="min-height: 250px;"></div><h2><strong>10 Mostly Used VBA Objects in Excel</strong></h2>
<p>There is a hierarchy followed by Excel in the case of objects which is:</p>
<p style="text-align: center;"><strong>Application → Workbook → Worksheet → Range</strong></p>
<p>We will discuss a list of the most commonly used objects of Excel VBA in detail.</p>
<h3><strong>Object 1 – Application Object</strong></h3>
<p>The <strong>Application</strong> object is used to represent the total Excel application.</p>
<div class="wpsm-table wpsm-table-black">
<table style="width: 100%;">
<tbody>
<tr>
<th style="width: 23.3974%;">Methods</th>
<th style="width: 29.2075%;">Properties</th>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Calculate</td>
<td style="width: 29.2075%; text-align: center;">ActiveCell</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">CalculateFull</td>
<td style="width: 29.2075%; text-align: center;">ActiveSheet</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">InputBox</td>
<td style="width: 29.2075%; text-align: center;"><span style="font-size: 12pt;">ActiveWindow</span></td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Quit</td>
<td style="width: 29.2075%; text-align: center;"><span style="font-size: 12pt;">ActiveWorkbook</span></td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Run</td>
<td style="width: 29.2075%; text-align: center;"><span style="font-size: 12pt;">DisplayScrollBars</span></td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Undo</td>
<td style="width: 29.2075%; text-align: center;"><span style="font-size: 12pt;">DisplayFormulaBar</span></td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Wait</td>
<td style="width: 29.2075%; text-align: center;"><span style="font-size: 12pt;">Path</span></td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;"></td>
<td style="width: 29.2075%; text-align: center;"><span style="font-size: 12pt;">StatusBar</span></td>
</tr>
</tbody>
</table>
</div>
<p>We need to add the required property or method while applying this object in Excel.</p>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 1: </strong></span></span></p>
<p>The <strong>Calculate </strong>method is used for the calculation of all open workbooks.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Calculate_All_Opened_Workbooks<span class="token punctuation">(</span><span class="token punctuation">)</span>
Application<span class="token punctuation">.</span>Calculate
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><strong> <img fetchpriority="high" decoding="async" class="aligncenter size-full wp-image-228673" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-1.1.png" alt="" width="403" height="136"></strong></p>
<hr>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 2: </strong></span></span></p>
<p>The <strong>DisplayScrollBars </strong>property with the <strong>Application </strong>object is used to hide the scroll bar.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Hide_Status_Bar<span class="token punctuation">(</span><span class="token punctuation">)</span>
Application<span class="token punctuation">.</span>DisplayScrollBars <span class="token operator">=</span> <span class="token boolean">False</span>
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><strong><img decoding="async" class="aligncenter wp-image-228674 size-full" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-1.png" alt="Excel Application objects" width="405" height="143"></strong></p><div id="cls-video-container-GSWDIiNC" class="adthrive" style="min-height: 443.25px;"><div></div></div>
<p>The status is set to <strong>False</strong>, which means it will not display the scroll bars of the Excel sheet.</p>
<div id="AdThrive_Content_3_desktop" class="adthrive-ad  adthrive-content adthrive-content-3" style="min-height: 250px;"></div><h3><strong>Object 2 – </strong><strong>Workbooks Object</strong></h3>
<p><strong>Workbooks</strong> object denotes the list of presently opened workbooks on an Excel application.</p>
<div class="wpsm-table wpsm-table-black">
<table style="width: 100%;">
<tbody>
<tr>
<th style="width: 23.3974%;">Methods</th>
<th style="width: 29.2075%;">Properties</th>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Add</td>
<td style="width: 29.2075%; text-align: center;">Application</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">CheckOut</td>
<td style="width: 29.2075%; text-align: center;">Count</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Close</td>
<td style="width: 29.2075%; text-align: center;">Creator</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Open</td>
<td style="width: 29.2075%; text-align: center;">Item</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;"></td>
<td style="width: 29.2075%; text-align: center;">Parent</td>
</tr>
</tbody>
</table>
</div>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 1:</strong></span></span></p>
<p>This VBA code is based on the Workbooks object that will close the Excel workbook.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Close_All_Opened_Workbooks<span class="token punctuation">(</span><span class="token punctuation">)</span>
Workbooks<span class="token punctuation">.</span>Close
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img decoding="async" class="aligncenter wp-image-228678 size-full" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-2.png" alt="Excel Workbooks Objects" width="365" height="145"></p>
<hr>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 2:</strong></span></span></p>
<p>This code will add a new variable <strong>page_1</strong> on the <strong>Disney.xlsx</strong> workbook.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Add_Variable_to_Specific_Workbook<span class="token punctuation">(</span><span class="token punctuation">)</span>
<span class="token keyword">Set</span> page_1 <span class="token operator">=</span> Workbooks<span class="token punctuation">.</span>Item<span class="token punctuation">(</span><span class="token string">"Disney.xlsx"</span><span class="token punctuation">)</span>
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter size-full wp-image-228676" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-2.1.png" alt="" width="416" height="143"></p>
<hr>
<div id="AdThrive_Content_4_desktop" class="adthrive-ad  adthrive-content adthrive-content-4" style="min-height: 250px;"></div><h3><strong>Object 3 – </strong><strong>Workbook Object</strong></h3>
<p>The <strong>Workbook </strong>object represents a single workbook. It is a member of <strong>Workbooks</strong> that are currently active or open. A workbook is a collection of worksheets.</p>
<div class="wpsm-table wpsm-table-black">
<table style="width: 100%;">
<tbody>
<tr>
<th style="width: 23.3974%;">Methods</th>
<th style="width: 29.2075%;">Properties</th>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Active</td>
<td style="width: 29.2075%; text-align: center;">ActiveChart</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">AddToFavourite</td>
<td style="width: 29.2075%; text-align: center;">ActiveSheet</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Close</td>
<td style="width: 29.2075%; text-align: center;">AutoSaveOn</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">DeleteNumberFormat</td>
<td style="width: 29.2075%; text-align: center;">FullName</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Save</td>
<td style="width: 29.2075%; text-align: center;">UserStatus</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">SaveAs</td>
<td style="width: 29.2075%; text-align: center;"></td>
</tr>
</tbody>
</table>
</div>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 1: </strong></span></span></p>
<p>Close the current workbook.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Close_Single_Workbook<span class="token punctuation">(</span><span class="token punctuation">)</span>
ActiveWorkbook<span class="token punctuation">.</span>Close
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter size-full wp-image-228684" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-3.png" alt="" width="365" height="144"></p>
<p>We applied a similar code to the close workbook. The Workbooks object is applied to all the opened workbooks. But the Workbook object is applicable only to the active workbook.</p>
<hr>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 2: </strong></span></span></p>
<p>Name a cell using the <strong>Workbook </strong>object.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Name_A_Cell<span class="token punctuation">(</span><span class="token punctuation">)</span>
ActiveWorkbook<span class="token punctuation">.</span>Names<span class="token punctuation">.</span>Add Name<span class="token punctuation">:</span><span class="token operator">=</span><span class="token string">"myName"</span><span class="token punctuation">,</span> RefersToR1C1<span class="token punctuation">:</span><span class="token operator">=</span><span class="token string">"=Sheet1!R5C5"</span>
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter size-full wp-image-228682" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-3.1.png" alt="" width="627" height="144"></p>
<hr>
<div id="AdThrive_Content_5_desktop" class="adthrive-ad  adthrive-content adthrive-content-5" style="min-height: 250px;"></div><h3><strong>Object 4 – Sheets Object</strong></h3>
<p>The <strong>Sheets</strong> object is related to all kinds of sheets of the specified or active Excel workbook. <strong>Sheets</strong> may be worksheets, chart sheets micro sheets.</p>
<div class="wpsm-table wpsm-table-black">
<table style="width: 100%;">
<tbody>
<tr>
<th style="width: 23.3974%;">Methods</th>
<th style="width: 29.2075%;">Properties</th>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Add</td>
<td style="width: 29.2075%; text-align: center;">Application</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Add2</td>
<td style="width: 29.2075%; text-align: center;">Count</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Copy</td>
<td style="width: 29.2075%; text-align: center;">Item</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Delete</td>
<td style="width: 29.2075%; text-align: center;">Parent</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">Move</td>
<td style="width: 29.2075%; text-align: center;">Visible</td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">PrintOut</td>
<td style="width: 29.2075%; text-align: center;"></td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">PrintPreview</td>
<td style="width: 29.2075%; text-align: center;"></td>
</tr>
<tr>
<td style="width: 23.3974%; text-align: center;">SelectCalculate</td>
<td style="width: 29.2075%; text-align: center;"></td>
</tr>
</tbody>
</table>
</div>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 1:</strong></span></span></p>
<p>This VBA code will activate the <strong>2nd</strong> sheet of the workbook.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Activate_Workbook<span class="token punctuation">(</span><span class="token punctuation">)</span>
Worksheets<span class="token punctuation">(</span><span class="token number">2</span><span class="token punctuation">)</span><span class="token punctuation">.</span>Activate
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter wp-image-228692 size-full" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-4.png" alt="Excel Sheets Objects" width="305" height="142"></p>
<hr>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 2:</strong></span></span></p>
<p>This will add a new sheet after the <strong>1st </strong>sheet.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Add_New_Sheet<span class="token punctuation">(</span><span class="token punctuation">)</span>
Sheets<span class="token punctuation">.</span>Add after<span class="token punctuation">:</span><span class="token operator">=</span>Sheets<span class="token punctuation">(</span><span class="token number">1</span><span class="token punctuation">)</span>
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter size-full wp-image-228691" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-4.1.png" alt="" width="413" height="144"></p>
<hr>
<div id="AdThrive_Content_6_desktop" class="adthrive-ad  adthrive-content adthrive-content-6" style="min-height: 250px;"></div><h3><strong>Object 5 – Worksheets Object</strong></h3>
<p>This <strong>Worksheets </strong>object is a part of the <strong>Sheets </strong>object. It is the collection of only the worksheets. But the <strong>Sheets</strong> object also includes chart sheets and micro sheets.</p>
<div class="wpsm-table wpsm-table-black">
<table style="height: 416px; width: 100%;">
<tbody>
<tr style="height: 26px;">
<th style="width: 23.3974%; height: 26px; text-align: center;">Methods</th>
<th style="width: 29.2075%; height: 26px; text-align: center;">Properties</th>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">Copy</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Application</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">Delete</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Count</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">Move</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Creator</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">PrintOut</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Item</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">PrintPreview</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Parent</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">Select</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Visible</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">Add</td>
<td style="width: 29.2075%; height: 26px; text-align: center;"></td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">Add2</td>
<td style="width: 29.2075%; height: 26px; text-align: center;"></td>
</tr>
</tbody>
</table>
</div>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 1:</strong></span></span></p>
<p>Activate the <strong>2nd </strong>worksheet of the following workbook.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Activate_Worksheet<span class="token punctuation">(</span><span class="token punctuation">)</span>
Worksheets<span class="token punctuation">(</span><span class="token number">2</span><span class="token punctuation">)</span><span class="token punctuation">.</span>Activate
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter size-full wp-image-228697" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-5.png" alt="" width="305" height="142"></p>
<p>We may also use the <strong>Sheets </strong>object. But if we use the <strong>Sheets </strong>object, that may activate a chart or micro sheet also depends on the location of the specified workbook.</p>
<hr>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 2:</strong></span></span></p>
<p>Copy a sheet on our desired location on the workbook.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Copy_A_Worksheet<span class="token punctuation">(</span><span class="token punctuation">)</span>
Worksheets<span class="token punctuation">(</span><span class="token string">"Disney"</span><span class="token punctuation">)</span><span class="token punctuation">.</span>Copy Before<span class="token punctuation">:</span><span class="token operator">=</span>Worksheets<span class="token punctuation">(</span><span class="token string">"Sheet1"</span><span class="token punctuation">)</span>
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter wp-image-228696 size-full" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-5.1.png" alt="Excel Worksheets Objects" width="506" height="141"></p>
<div id="AdThrive_Content_7_desktop" class="adthrive-ad  adthrive-content adthrive-content-7" style="min-height: 250px;"></div><h3><strong>Object 6 – </strong><strong> Worksheet Object</strong></h3>
<p>The <strong>Worksheet</strong> object is a part of the <strong>Worksheets</strong>. It represents a single worksheet. This section will show a sample VBA code based on the <strong>Worksheet</strong> object that renames a worksheet.</p>
<div class="wpsm-table wpsm-table-black">
<table style="width: 100%; height: 416px;">
<tbody>
<tr style="height: 26px;">
<th style="width: 23.3974%; height: 26px;">Methods</th>
<th style="width: 29.2075%; height: 26px;">Properties</th>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Activate</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Application</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Calculate</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Cells</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">CheckSpelling</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Columns</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Copy</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Comments</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Delete</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Name</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Evaluate</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Next</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Move</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Outline</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Paste</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">PageSetup</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">PasteSpecial</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Parent</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">PrintOut</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Range</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">PrintPreview</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Rows</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">SaveAs</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Shapes</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Select</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Sort</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Tab</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Type</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Visible</td>
</tr>
</tbody>
</table>
</div>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 1: </strong></span></span></p>
<p>Change the name of the active worksheet.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Rename_A_Worksheet<span class="token punctuation">(</span><span class="token punctuation">)</span>
ActiveSheet<span class="token punctuation">.</span>Name <span class="token operator">=</span> <span class="token string">"Data Set -2"</span>
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter wp-image-228700 size-full" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-6.png" alt="Excel Worksheet Objects" width="360" height="150"></p>
<hr>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 2: </strong></span></span></p>
<p>Show the name of the current worksheet.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Show_Worksheet_Name<span class="token punctuation">(</span><span class="token punctuation">)</span>
MsgBox ActiveSheet<span class="token punctuation">.</span>Name
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter size-full wp-image-228699" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-6.1.png" alt="" width="396" height="138"></p>
<hr>
<div id="AdThrive_Content_8_desktop" class="adthrive-ad  adthrive-content adthrive-content-8" style="min-height: 250px;"></div><h3><strong>Object 7 – </strong><strong> Range Object</strong></h3>
<p>The <strong>Range</strong> object is related to cells of the Excel file. It is used to select a single cell, row, column, or a certain number of cells, rows, or columns from an Excel Worksheet. We have to put the cell reference in the argument.</p>
<div class="wpsm-table wpsm-table-black">
<table style="width: 100%; height: 624px;">
<tbody>
<tr style="height: 26px;">
<th style="width: 23.3974%; height: 26px;">Methods</th>
<th style="width: 29.2075%; height: 26px;">Properties</th>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Activate</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Address</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">AutoFill</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Application</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Calculate</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Areas</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Clear</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Cells</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Copy</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Column</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Delete</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Count</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Find</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">End</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Insert</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Font</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">PasteSpecial</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Height</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Replace</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Item</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Run</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Left</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Select</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">ListObject</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Show</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Name</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Sort</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Next</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Table</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Parent</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Range</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Row</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Rows</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Top</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Validation</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Value</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Width</td>
</tr>
</tbody>
</table>
</div>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 1: </strong></span></span></p>
<p>Select cell range <strong>B5:D5</strong>.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Select_A_Range<span class="token punctuation">(</span><span class="token punctuation">)</span>
Range<span class="token punctuation">(</span><span class="token string">"B5:D5"</span><span class="token punctuation">)</span><span class="token punctuation">.</span><span class="token keyword">Select</span>
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter size-full wp-image-228703" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-7.png" alt="" width="360" height="145"></p>
<hr>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 2: </strong></span></span></p>
<p>Copy a certain range from the active sheet.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Copy_A_Range1<span class="token punctuation">(</span><span class="token punctuation">)</span>
Range<span class="token punctuation">(</span><span class="token string">"A1:E1"</span><span class="token punctuation">)</span><span class="token punctuation">.</span>Copy
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter wp-image-228702 size-full" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-7.1.png" alt="Excel Range Objects" width="393" height="144"></p>
<hr>
<div id="AdThrive_Content_9_desktop" class="adthrive-ad  adthrive-content adthrive-content-9" style="min-height: 250px;"></div><h3><strong>Object </strong><strong>8 – Shapes Object</strong></h3>
<p>The <strong>Shapes </strong>object is related to all shapes that exist in a worksheet. We can select and delete or perform other tasks using this object.</p>
<div class="wpsm-table wpsm-table-black">
<table style="height: 208px; width: 100%;">
<tbody>
<tr style="height: 26px;">
<th style="width: 23.3974%; height: 26px;">Methods</th>
<th style="width: 29.2075%; height: 26px;">Properties</th>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">AddCallout</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Application</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">AddConnector</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Count</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">AddLine</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Creator</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">AddPicture</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Parent</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">AddShape</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Range</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Item</td>
<td style="width: 29.2075%; text-align: center; height: 26px;"></td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">SelectAll</td>
<td style="width: 29.2075%; text-align: center; height: 26px;"></td>
</tr>
</tbody>
</table>
</div>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 1: </strong></span></span></p>
<p>Select all kinds of shapes from a worksheet.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> All_Shapes_of_A_Worksheet<span class="token punctuation">(</span><span class="token punctuation">)</span>
ActiveSheet<span class="token punctuation">.</span>Shapes<span class="token punctuation">.</span>SelectAll
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter size-full wp-image-228706" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-8.png" alt="" width="354" height="145"></p>
<hr>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example 2:</strong></span></span></p>
<p>Apply the desired action to the existing shapes of the active worksheet.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Apply_A_Procedure_on_Shapes<span class="token punctuation">(</span><span class="token punctuation">)</span>
ActiveSheet<span class="token punctuation">.</span>Shapes<span class="token punctuation">(</span><span class="token number">1</span><span class="token punctuation">)</span><span class="token punctuation">.</span>OnAction <span class="token operator">=</span> <span class="token string">"ShapeClick"</span>
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter wp-image-228705 size-full" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-8.1.png" alt="Excel VBA Shapes Objects" width="444" height="145"></p>
<hr>
<div id="AdThrive_Content_10_desktop" class="adthrive-ad  adthrive-content adthrive-content-10" style="min-height: 250px;"></div><h3><strong>Object 9 – </strong><strong>Shape Object</strong></h3>
<p>The <strong>Shape</strong> object is a part of the Shapes. It indicates a single shape in an active worksheet. It is used with the <strong>Shapes</strong> object.</p>
<div class="wpsm-table wpsm-table-black">
<table style="width: 100%; height: 624px;">
<tbody>
<tr style="height: 26px;">
<th style="width: 23.3974%; height: 26px;">Methods</th>
<th style="width: 29.2075%; height: 26px;">Properties</th>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Apply</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Application</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Copy</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">AutoShapeType</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Cut</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">BackgroundStyle</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Delete</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Chart</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Duplicate</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Connector</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;">Select</td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Fill</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Height</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Left</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Name</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">OnAction</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Parent</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Reflection</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Title</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Top</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Type</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Visible</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; text-align: center; height: 26px;"></td>
<td style="width: 29.2075%; text-align: center; height: 26px;">Width</td>
</tr>
</tbody>
</table>
</div>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example:</strong></span></span></p>
<p>Create a star with <strong>5</strong> edges.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Create_A_Shape<span class="token punctuation">(</span><span class="token punctuation">)</span>
ActiveSheet<span class="token punctuation">.</span>Shapes<span class="token punctuation">.</span>AddShape msoShape5pointStar<span class="token punctuation">,</span> <span class="token number">300</span><span class="token punctuation">,</span> <span class="token number">100</span><span class="token punctuation">,</span> <span class="token number">60</span><span class="token punctuation">,</span> <span class="token number">60</span>
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter size-full wp-image-228725" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-9.png" alt="" width="586" height="143"></p>
<p>We can draw any kind of shape by changing the msoShape5pointStar command.</p>
<hr>
<div id="AdThrive_Content_11_desktop" class="adthrive-ad  adthrive-content adthrive-content-11" style="min-height: 250px;"></div><h3><strong>Object 10 – </strong><strong>ListObject Object</strong></h3>
<p><strong>ListObject </strong>is a part of <strong>ListObjects Object</strong>. A <strong>ListObject </strong>indicates a single table of the worksheet.</p>
<div class="wpsm-table wpsm-table-black">
<table style="height: 416px; width: 100%;">
<tbody>
<tr style="height: 26px;">
<th style="width: 23.3974%; height: 26px; text-align: center;">Methods</th>
<th style="width: 29.2075%; height: 26px; text-align: center;">Properties</th>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">Delete</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Active</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">Publish</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Application</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">Refresh</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">AutoFilter</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;">Resize</td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Comment</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;"></td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Creator</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;"></td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Name</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;"></td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Parent</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;"></td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Range</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;"></td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Sort</td>
</tr>
<tr style="height: 26px;">
<td style="width: 23.3974%; height: 26px; text-align: center;"></td>
<td style="width: 29.2075%; height: 26px; text-align: center;">Summary</td>
</tr>
</tbody>
</table>
</div>
<p><span style="text-decoration: underline; color: #008080;"><span style="font-size: 14pt;"><strong>Example:</strong></span></span></p>
<p>Extract data from a table and store it in the array.</p>
<div class="code-toolbar"><pre class="language-visual-basic" tabindex="0"><code class="language-visual-basic"><span class="token keyword">Sub</span> Store_Data_From_Table_To_Array<span class="token punctuation">(</span><span class="token punctuation">)</span>
<span class="token keyword">Dim</span> D_Table <span class="token keyword">As</span> ListObject
<span class="token keyword">Dim</span> D_Array <span class="token keyword">As</span> <span class="token keyword">Variant</span>
<span class="token keyword">Dim</span> N <span class="token keyword">As</span> <span class="token keyword">Long</span>
  <span class="token keyword">Set</span> D_Table <span class="token operator">=</span> ActiveSheet<span class="token punctuation">.</span>ListObjects<span class="token punctuation">(</span><span class="token string">"My_Data"</span><span class="token punctuation">)</span>
  D_Array <span class="token operator">=</span> D_Table<span class="token punctuation">.</span>DataBodyRange
  <span class="token keyword">For</span> N <span class="token operator">=</span> LBound<span class="token punctuation">(</span>D_Array<span class="token punctuation">)</span> <span class="token keyword">To</span> UBound<span class="token punctuation">(</span>D_Array<span class="token punctuation">)</span>
    Debug<span class="token punctuation">.</span>Print D_Array<span class="token punctuation">(</span>N<span class="token punctuation">,</span> <span class="token number">2</span><span class="token punctuation">)</span>
  <span class="token keyword">Next</span> N
<span class="token keyword">End</span> <span class="token keyword">Sub</span></code></pre><div class="toolbar"><div class="toolbar-item"><span>Visual Basic</span></div><div class="toolbar-item"><button class="copy-to-clipboard-button" type="button" data-copy-state="copy"><span>Copy</span></button></div></div></div>
<p><img loading="lazy" decoding="async" class="aligncenter wp-image-228726 size-full" src="https://www.exceldemy.com/wp-content/uploads/2014/02/Excel-VBA-Objects-List-10.png" alt="Excel VBA ListObject" width="482" height="253"></p>