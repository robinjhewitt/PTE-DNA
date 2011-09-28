<%
String filename = request.getParameter("filename");
response.reset();
response.setHeader("Content-type","application/excel");
response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
java.io.FileInputStream fileInputStream =
new java.io.FileInputStream(filename);
int i;
while ((i=fileInputStream.read()) != -1) {
out.write(i);
}
fileInputStream.close();
out.close();
%>
