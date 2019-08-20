#text2workspace.py datacard_ttHH4b.txt -o workspace_tthh.root
text2workspace.py datacard_tthh_combined.txt -o workspace_tthh.root
combine -M AsymptoticLimits workspace_tthh.root
combine -M FitDiagnostics workspace_tthh.root --rMin -20 --rMax 25 -t -1 --expectSignal=1 --cminDefaultMinimizerStrategy 0
python diffNuisances.py fitDiagnostics.root --all
combine -M Significance workspace_tthh.root --rMin -20 --rMax 25 -t -1 --expectSignal=1
