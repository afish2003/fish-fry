from graphviz import Digraph

dot = Digraph(
    comment="ragWorkflowDiagram",
    format="png"
)

dot.attr(
    rankdir="LR",
    fontsize="12",
    labelloc="t",
    label="Retrieval-Augmented Generation (RAG) Workflow"
)

dot.node("Q", "User Query")
dot.node("R", "Retriever")
dot.node("V", "Vector Database\n(Embeddings)")
dot.node("L", "Language Model")
dot.node("A", "Final Response")

dot.edge("Q", "R")
dot.edge("R", "V", label="search")
dot.edge("V", "R", label="relevant context")
dot.edge("R", "L")
dot.edge("L", "A")

dot.render("rag_workflow_diagram", cleanup=True)