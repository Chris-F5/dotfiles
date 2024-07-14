import sys
import fpdf

output = "output.pdf"
size = 8

pdf = fpdf.FPDF('P', 'pt', 'A4')
pdf.add_page()
pdf.set_font('Courier', size=size)
for line in sys.stdin:
#for line in [str(i) for i in range(100)]:
  pdf.cell(40, size, line)
  pdf.ln()
pdf.output(output, 'F')
