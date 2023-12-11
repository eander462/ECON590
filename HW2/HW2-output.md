---
title: "HW2 Analysis"
author: "Erik Andersen"
date: "2023-12-11"
output:
  html_document:
    keep_md: yes
  pdf_document: default
---







In this brief study, I'm looking to see if the gender of the plot owner matters in determining output in Nigeria. This follows Udry (1996). Below is a raw comparison of the yields by gender. The first table includes all observations, and the second only includes those for which the survey question asking what the plot area is was answered. Intuitively, it makes more sense to control for area, or even standardize output per area, but hardly any plots answered the plot area question, so there is potential for selection bias. I include both for completeness. In either case, we can see that male controlled plots yield much higher outputs than female controlled plots. 


```{=html}
<div id="guxfifwiug" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#guxfifwiug table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#guxfifwiug thead, #guxfifwiug tbody, #guxfifwiug tfoot, #guxfifwiug tr, #guxfifwiug td, #guxfifwiug th {
  border-style: none;
}

#guxfifwiug p {
  margin: 0;
  padding: 0;
}

#guxfifwiug .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#guxfifwiug .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#guxfifwiug .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#guxfifwiug .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#guxfifwiug .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#guxfifwiug .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#guxfifwiug .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#guxfifwiug .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#guxfifwiug .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#guxfifwiug .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#guxfifwiug .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#guxfifwiug .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#guxfifwiug .gt_spanner_row {
  border-bottom-style: hidden;
}

#guxfifwiug .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#guxfifwiug .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#guxfifwiug .gt_from_md > :first-child {
  margin-top: 0;
}

#guxfifwiug .gt_from_md > :last-child {
  margin-bottom: 0;
}

#guxfifwiug .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#guxfifwiug .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#guxfifwiug .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#guxfifwiug .gt_row_group_first td {
  border-top-width: 2px;
}

#guxfifwiug .gt_row_group_first th {
  border-top-width: 2px;
}

#guxfifwiug .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#guxfifwiug .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#guxfifwiug .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#guxfifwiug .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#guxfifwiug .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#guxfifwiug .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#guxfifwiug .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#guxfifwiug .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#guxfifwiug .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#guxfifwiug .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#guxfifwiug .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#guxfifwiug .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#guxfifwiug .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#guxfifwiug .gt_left {
  text-align: left;
}

#guxfifwiug .gt_center {
  text-align: center;
}

#guxfifwiug .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#guxfifwiug .gt_font_normal {
  font-weight: normal;
}

#guxfifwiug .gt_font_bold {
  font-weight: bold;
}

#guxfifwiug .gt_font_italic {
  font-style: italic;
}

#guxfifwiug .gt_super {
  font-size: 65%;
}

#guxfifwiug .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#guxfifwiug .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#guxfifwiug .gt_indent_1 {
  text-indent: 5px;
}

#guxfifwiug .gt_indent_2 {
  text-indent: 10px;
}

#guxfifwiug .gt_indent_3 {
  text-indent: 15px;
}

#guxfifwiug .gt_indent_4 {
  text-indent: 20px;
}

#guxfifwiug .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <caption>No control for plot area</caption>
  <thead>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="sex">sex</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Yield">Yield</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="n">n</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="sex" class="gt_row gt_center">F</td>
<td headers="Yield" class="gt_row gt_right">140.1</td>
<td headers="n" class="gt_row gt_right">6675</td></tr>
    <tr><td headers="sex" class="gt_row gt_center">M</td>
<td headers="Yield" class="gt_row gt_right">329.3</td>
<td headers="n" class="gt_row gt_right">34226</td></tr>
  </tbody>
  
  
</table>
</div>
```

```{=html}
<div id="giwbtrylwr" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#giwbtrylwr table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#giwbtrylwr thead, #giwbtrylwr tbody, #giwbtrylwr tfoot, #giwbtrylwr tr, #giwbtrylwr td, #giwbtrylwr th {
  border-style: none;
}

#giwbtrylwr p {
  margin: 0;
  padding: 0;
}

#giwbtrylwr .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#giwbtrylwr .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#giwbtrylwr .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#giwbtrylwr .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#giwbtrylwr .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#giwbtrylwr .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#giwbtrylwr .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#giwbtrylwr .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#giwbtrylwr .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#giwbtrylwr .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#giwbtrylwr .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#giwbtrylwr .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#giwbtrylwr .gt_spanner_row {
  border-bottom-style: hidden;
}

#giwbtrylwr .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#giwbtrylwr .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#giwbtrylwr .gt_from_md > :first-child {
  margin-top: 0;
}

#giwbtrylwr .gt_from_md > :last-child {
  margin-bottom: 0;
}

#giwbtrylwr .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#giwbtrylwr .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#giwbtrylwr .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#giwbtrylwr .gt_row_group_first td {
  border-top-width: 2px;
}

#giwbtrylwr .gt_row_group_first th {
  border-top-width: 2px;
}

#giwbtrylwr .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#giwbtrylwr .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#giwbtrylwr .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#giwbtrylwr .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#giwbtrylwr .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#giwbtrylwr .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#giwbtrylwr .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#giwbtrylwr .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#giwbtrylwr .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#giwbtrylwr .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#giwbtrylwr .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#giwbtrylwr .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#giwbtrylwr .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#giwbtrylwr .gt_left {
  text-align: left;
}

#giwbtrylwr .gt_center {
  text-align: center;
}

#giwbtrylwr .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#giwbtrylwr .gt_font_normal {
  font-weight: normal;
}

#giwbtrylwr .gt_font_bold {
  font-weight: bold;
}

#giwbtrylwr .gt_font_italic {
  font-style: italic;
}

#giwbtrylwr .gt_super {
  font-size: 65%;
}

#giwbtrylwr .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#giwbtrylwr .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#giwbtrylwr .gt_indent_1 {
  text-indent: 5px;
}

#giwbtrylwr .gt_indent_2 {
  text-indent: 10px;
}

#giwbtrylwr .gt_indent_3 {
  text-indent: 15px;
}

#giwbtrylwr .gt_indent_4 {
  text-indent: 20px;
}

#giwbtrylwr .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <caption>Control for area</caption>
  <thead>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="sex">sex</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Yield">Yield</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="n">n</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="sex" class="gt_row gt_center">F</td>
<td headers="Yield" class="gt_row gt_right">90.89</td>
<td headers="n" class="gt_row gt_right">653</td></tr>
    <tr><td headers="sex" class="gt_row gt_center">M</td>
<td headers="Yield" class="gt_row gt_right">148.39</td>
<td headers="n" class="gt_row gt_right">1579</td></tr>
  </tbody>
  
  
</table>
</div>
```



There are many other observable factors that might influence output, so the raw comparison is not that insightful. Below are three regressions in which we control for household-year-crop fixed effects. The first column shows the results for regressing total yield on sex using all the data. Here, a plot being controlled by a male decreased the output by 24. This is very noisily measured however, so we cannot reject the null of no effect. 

The next two regressions use the truncated data set in which people answered the question on the size of their plot. We can see the sample size drops dramatically from more than 40,000 to only around 2500. The second column used yield per unit of land area as its outcome. In this case there is no effect of the gender of the plot owner. When we go back to using total yield as the outcome, we get the opposite effect to the whole data set. A male controlled plot yields more output by 6 units. This effect is significant at the 10% level. This result is closest to Udry (1996). None of the other results show that gender of plot owner matters. This one has a small, and only barely significant effect. 



```{=html}
<div id="ohrrdldxyt" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#ohrrdldxyt table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#ohrrdldxyt thead, #ohrrdldxyt tbody, #ohrrdldxyt tfoot, #ohrrdldxyt tr, #ohrrdldxyt td, #ohrrdldxyt th {
  border-style: none;
}

#ohrrdldxyt p {
  margin: 0;
  padding: 0;
}

#ohrrdldxyt .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#ohrrdldxyt .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#ohrrdldxyt .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ohrrdldxyt .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ohrrdldxyt .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ohrrdldxyt .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ohrrdldxyt .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ohrrdldxyt .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#ohrrdldxyt .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#ohrrdldxyt .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ohrrdldxyt .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ohrrdldxyt .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#ohrrdldxyt .gt_spanner_row {
  border-bottom-style: hidden;
}

#ohrrdldxyt .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#ohrrdldxyt .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#ohrrdldxyt .gt_from_md > :first-child {
  margin-top: 0;
}

#ohrrdldxyt .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ohrrdldxyt .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#ohrrdldxyt .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#ohrrdldxyt .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#ohrrdldxyt .gt_row_group_first td {
  border-top-width: 2px;
}

#ohrrdldxyt .gt_row_group_first th {
  border-top-width: 2px;
}

#ohrrdldxyt .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ohrrdldxyt .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#ohrrdldxyt .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#ohrrdldxyt .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ohrrdldxyt .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ohrrdldxyt .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ohrrdldxyt .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#ohrrdldxyt .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ohrrdldxyt .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ohrrdldxyt .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ohrrdldxyt .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ohrrdldxyt .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ohrrdldxyt .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#ohrrdldxyt .gt_left {
  text-align: left;
}

#ohrrdldxyt .gt_center {
  text-align: center;
}

#ohrrdldxyt .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ohrrdldxyt .gt_font_normal {
  font-weight: normal;
}

#ohrrdldxyt .gt_font_bold {
  font-weight: bold;
}

#ohrrdldxyt .gt_font_italic {
  font-style: italic;
}

#ohrrdldxyt .gt_super {
  font-size: 65%;
}

#ohrrdldxyt .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#ohrrdldxyt .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#ohrrdldxyt .gt_indent_1 {
  text-indent: 5px;
}

#ohrrdldxyt .gt_indent_2 {
  text-indent: 10px;
}

#ohrrdldxyt .gt_indent_3 {
  text-indent: 15px;
}

#ohrrdldxyt .gt_indent_4 {
  text-indent: 20px;
}

#ohrrdldxyt .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <caption>Differing Plot Yields by Gender</caption>
  <thead>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id=" "> </th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="(1)">(1)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="(2)">(2)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="(3)">(3)</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="" class="gt_row gt_left">Male</td>
<td headers="(1)" class="gt_row gt_center">-24.01</td>
<td headers="(2)" class="gt_row gt_center">0.02</td>
<td headers="(3)" class="gt_row gt_center">6.38</td></tr>
    <tr><td headers="" class="gt_row gt_left"></td>
<td headers="(1)" class="gt_row gt_center">(0.72)</td>
<td headers="(2)" class="gt_row gt_center">(0.24)</td>
<td headers="(3)" class="gt_row gt_center">(0.10)</td></tr>
    <tr><td headers="" class="gt_row gt_left">Area</td>
<td headers="(1)" class="gt_row gt_center"></td>
<td headers="(2)" class="gt_row gt_center"></td>
<td headers="(3)" class="gt_row gt_center">0.00</td></tr>
    <tr><td headers="" class="gt_row gt_left" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #000000;"></td>
<td headers="(1)" class="gt_row gt_center" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #000000;"></td>
<td headers="(2)" class="gt_row gt_center" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #000000;"></td>
<td headers="(3)" class="gt_row gt_center" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #000000;">(0.13)</td></tr>
    <tr><td headers="" class="gt_row gt_left">Num.Obs.</td>
<td headers="(1)" class="gt_row gt_center">40901</td>
<td headers="(2)" class="gt_row gt_center">2227</td>
<td headers="(3)" class="gt_row gt_center">2232</td></tr>
    <tr><td headers="" class="gt_row gt_left">R2</td>
<td headers="(1)" class="gt_row gt_center">0.997</td>
<td headers="(2)" class="gt_row gt_center">0.657</td>
<td headers="(3)" class="gt_row gt_center">0.781</td></tr>
    <tr><td headers="" class="gt_row gt_left">Std.Errors</td>
<td headers="(1)" class="gt_row gt_center">by: hh_year_crop</td>
<td headers="(2)" class="gt_row gt_center">by: hh_year_crop</td>
<td headers="(3)" class="gt_row gt_center">by: hh_year_crop</td></tr>
    <tr><td headers="" class="gt_row gt_left">FE: hh_year_crop</td>
<td headers="(1)" class="gt_row gt_center">X</td>
<td headers="(2)" class="gt_row gt_center">X</td>
<td headers="(3)" class="gt_row gt_center">X</td></tr>
  </tbody>
  
  
</table>
</div>
```


Speculating, I think my results are different than Udry's because there are some outlier farms owned by something like a corporation that change the results. Below, the same regressions are shown, but filtering to include only plots with less than 100 units in yield. Doing this only removes about a quarter of the sample size, but now we focus only on rural plots. The coefficients on gender are measured much more precisely this time. In particular when using the whole sample, we go from the incredibly noisily measured -24 output units for being male to a precisely measured 1.4 extra units of output from being male. 

The two regressions where we include only those who gave the area of their plots show similar effects. Now there is a strong, almost significant effect for being male on output per unit area, and an almost identical effect on yield controlling for area. These results match closely to Udry's result. When we look only at the small, probably rural farms, gender of plot owner matters, but when we include large possibly industrialized plots, gender ceases to matter.


```{=html}
<div id="hytkjjomxh" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#hytkjjomxh table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#hytkjjomxh thead, #hytkjjomxh tbody, #hytkjjomxh tfoot, #hytkjjomxh tr, #hytkjjomxh td, #hytkjjomxh th {
  border-style: none;
}

#hytkjjomxh p {
  margin: 0;
  padding: 0;
}

#hytkjjomxh .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#hytkjjomxh .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#hytkjjomxh .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#hytkjjomxh .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#hytkjjomxh .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#hytkjjomxh .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#hytkjjomxh .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#hytkjjomxh .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#hytkjjomxh .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#hytkjjomxh .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#hytkjjomxh .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#hytkjjomxh .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#hytkjjomxh .gt_spanner_row {
  border-bottom-style: hidden;
}

#hytkjjomxh .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#hytkjjomxh .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#hytkjjomxh .gt_from_md > :first-child {
  margin-top: 0;
}

#hytkjjomxh .gt_from_md > :last-child {
  margin-bottom: 0;
}

#hytkjjomxh .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#hytkjjomxh .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#hytkjjomxh .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#hytkjjomxh .gt_row_group_first td {
  border-top-width: 2px;
}

#hytkjjomxh .gt_row_group_first th {
  border-top-width: 2px;
}

#hytkjjomxh .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#hytkjjomxh .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#hytkjjomxh .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#hytkjjomxh .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#hytkjjomxh .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#hytkjjomxh .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#hytkjjomxh .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#hytkjjomxh .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#hytkjjomxh .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#hytkjjomxh .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#hytkjjomxh .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#hytkjjomxh .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#hytkjjomxh .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#hytkjjomxh .gt_left {
  text-align: left;
}

#hytkjjomxh .gt_center {
  text-align: center;
}

#hytkjjomxh .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#hytkjjomxh .gt_font_normal {
  font-weight: normal;
}

#hytkjjomxh .gt_font_bold {
  font-weight: bold;
}

#hytkjjomxh .gt_font_italic {
  font-style: italic;
}

#hytkjjomxh .gt_super {
  font-size: 65%;
}

#hytkjjomxh .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#hytkjjomxh .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#hytkjjomxh .gt_indent_1 {
  text-indent: 5px;
}

#hytkjjomxh .gt_indent_2 {
  text-indent: 10px;
}

#hytkjjomxh .gt_indent_3 {
  text-indent: 15px;
}

#hytkjjomxh .gt_indent_4 {
  text-indent: 20px;
}

#hytkjjomxh .gt_indent_5 {
  text-indent: 25px;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <caption>Differing Plot Yields by Gender</caption>
  <thead>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id=" "> </th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="(1)">(1)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="(2)">(2)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_center" rowspan="1" colspan="1" scope="col" id="(3)">(3)</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="" class="gt_row gt_left">Male</td>
<td headers="(1)" class="gt_row gt_center">1.43</td>
<td headers="(2)" class="gt_row gt_center">0.02</td>
<td headers="(3)" class="gt_row gt_center">6.21</td></tr>
    <tr><td headers="" class="gt_row gt_left"></td>
<td headers="(1)" class="gt_row gt_center">(0.03)</td>
<td headers="(2)" class="gt_row gt_center">(0.24)</td>
<td headers="(3)" class="gt_row gt_center">(0.11)</td></tr>
    <tr><td headers="" class="gt_row gt_left">Area</td>
<td headers="(1)" class="gt_row gt_center"></td>
<td headers="(2)" class="gt_row gt_center"></td>
<td headers="(3)" class="gt_row gt_center">0.00</td></tr>
    <tr><td headers="" class="gt_row gt_left" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #000000;"></td>
<td headers="(1)" class="gt_row gt_center" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #000000;"></td>
<td headers="(2)" class="gt_row gt_center" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #000000;"></td>
<td headers="(3)" class="gt_row gt_center" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #000000;">(0.33)</td></tr>
    <tr><td headers="" class="gt_row gt_left">Num.Obs.</td>
<td headers="(1)" class="gt_row gt_center">28768</td>
<td headers="(2)" class="gt_row gt_center">1887</td>
<td headers="(3)" class="gt_row gt_center">1892</td></tr>
    <tr><td headers="" class="gt_row gt_left">R2</td>
<td headers="(1)" class="gt_row gt_center">0.966</td>
<td headers="(2)" class="gt_row gt_center">1.000</td>
<td headers="(3)" class="gt_row gt_center">0.978</td></tr>
    <tr><td headers="" class="gt_row gt_left">Std.Errors</td>
<td headers="(1)" class="gt_row gt_center">by: hh_year_crop</td>
<td headers="(2)" class="gt_row gt_center">by: hh_year_crop</td>
<td headers="(3)" class="gt_row gt_center">by: hh_year_crop</td></tr>
    <tr><td headers="" class="gt_row gt_left">FE: hh_year_crop</td>
<td headers="(1)" class="gt_row gt_center">X</td>
<td headers="(2)" class="gt_row gt_center">X</td>
<td headers="(3)" class="gt_row gt_center">X</td></tr>
  </tbody>
  
  
</table>
</div>
```

