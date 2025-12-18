from graphviz import Digraph

dot = Digraph(
    comment="Local vs Cloud AI",
    format="png"
)

dot.attr(
    rankdir="TB",
    fontsize="12",
    labelloc="t",
    label="Localized RAG Systems vs Cloud-Based AI Services"
)

dot.node(
    "Local",
    """Localized RAG System
-------------------------
• Runs on local hardware
• User-controlled data
• Offline or limited-network use
• Transparent document scope"""
)

dot.node(
    "Cloud",
    """Cloud AI Service
-------------------------
• Runs on remote servers
• Provider-controlled data
• Always online
• Opaque training sources"""
)

dot.edge("Local", "Cloud", label="contrasts with", dir="none")

dot.render("techIssueLocalVSCloudAI", cleanup=True)