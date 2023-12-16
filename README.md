File Structure

    sna_edges.ipynb:
        Utilizes 'patients.csv' to create an edges table (edges.csv)
        Defines Source and Target based on different Patient IDs with common diagnoses.
        Sets Type to 'Shared_Diagnoses.'

    patientdf.R:
        R code for comprehensive exploration of 'patients.csv.'
        Includes necessary visualizations and edits.
        Generates a refined CSV file, 'patdf.csv,' used as the 'Nodes Table' in Gephi.

    Gephi Workflow:
        'patdf.csv' is imported as 'Nodes Table.'
        'edges.csv' (created in sna_edges.ipynb) is imported as 'Edges Table.'
        Yifan Hu Layout, statistics, and network exploration are conducted.

    networkx_graph.ipynb:
        Python code using NetworkX to create a graph with the same Nodes and Edges table used in Gephi.

    Export and Analysis:
        After Gephi exploration, '2_nm.csv' is exported to analyze calculated network measures.

    measures_analysis.ipynb:
        Python code calculating Pearson correlation coefficient and P-value using SciPy from '2_nm.csv' (exported from Gephi).
    
    Final_Project_Raval.pdf
        Final report for the project. Useful for an overview and final results. 

Collaboration and Contributions

Feel free to contribute, provide feedback, or report issues. 

Usage Instructions

    Begin with 'patients.csv' and follow the sequence of Jupyter Notebooks and R scripts.
    Ensure necessary dependencies are installed before running any code.
    Leverage Gephi and NetworkX for comprehensive network analysis.
    Explore the exported '2_nm.csv' for detailed network measures.
    Use 'measures_analysis.ipynb' for final correlation analysis.

Acknowledgments

Thank you for engaging with this project. Your insights are valuable in enhancing the robustness of this analysis and your collaboration is welcomed for advancing our understanding of peer support systems within patient networks.
