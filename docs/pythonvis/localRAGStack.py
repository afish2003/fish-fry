from graphviz import Digraph

dot = Digraph(
    comment="Local RAG Stack",
    format="png"
)

dot.attr(
    rankdir="TB",
    fontsize="12",
    labelloc="t",
    label="Typical Local RAG System Stack"
)

dot.node("D", "Local Documents\n(PDFs, Text Files, Archives)")
dot.node("E", "Embedding Model")
dot.node("V", "Vector Store")
dot.node("P", "RAG Pipeline")
dot.node("U", "User Interaction")

dot.edge("D", "E")
dot.edge("E", "V")
dot.edge("V", "P")
dot.edge("P", "U")

dot.render("localRAGStack", cleanup=True)