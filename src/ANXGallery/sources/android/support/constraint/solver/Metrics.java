package android.support.constraint.solver;

import java.util.ArrayList;

public class Metrics {
    public long additionalMeasures;
    public long barrierConnectionResolved;
    public long bfs;
    public long centerConnectionResolved;
    public long chainConnectionResolved;
    public long constraints;
    public long errors;
    public long extravariables;
    public long fullySolved;
    public long graphOptimizer;
    public long iterations;
    public long lastTableSize;
    public long matchConnectionResolved;
    public long maxRows;
    public long maxTableSize;
    public long maxVariables;
    public long measures;
    public long minimize;
    public long minimizeGoal;
    public long nonresolvedWidgets;
    public long oldresolvedWidgets;
    public long optimize;
    public long pivots;
    public ArrayList<String> problematicLayouts;
    public long resolutions;
    public long resolvedWidgets;
    public long simpleconstraints;
    public long slackvariables;
    public long tableSizeIncrease;
    public long variables;

    public String toString() {
        return "\n*** Metrics ***\nmeasures: " + this.measures + "\nadditionalMeasures: " + this.additionalMeasures + "\nresolutions passes: " + this.resolutions + "\ntable increases: " + this.tableSizeIncrease + "\nmaxTableSize: " + this.maxTableSize + "\nmaxVariables: " + this.maxVariables + "\nmaxRows: " + this.maxRows + "\n\nminimize: " + this.minimize + "\nminimizeGoal: " + this.minimizeGoal + "\nconstraints: " + this.constraints + "\nsimpleconstraints: " + this.simpleconstraints + "\noptimize: " + this.optimize + "\niterations: " + this.iterations + "\npivots: " + this.pivots + "\nbfs: " + this.bfs + "\nvariables: " + this.variables + "\nerrors: " + this.errors + "\nslackvariables: " + this.slackvariables + "\nextravariables: " + this.extravariables + "\nfullySolved: " + this.fullySolved + "\ngraphOptimizer: " + this.graphOptimizer + "\nresolvedWidgets: " + this.resolvedWidgets + "\noldresolvedWidgets: " + this.oldresolvedWidgets + "\nnonresolvedWidgets: " + this.nonresolvedWidgets + "\ncenterConnectionResolved: " + this.centerConnectionResolved + "\nmatchConnectionResolved: " + this.matchConnectionResolved + "\nchainConnectionResolved: " + this.chainConnectionResolved + "\nbarrierConnectionResolved: " + this.barrierConnectionResolved + "\nproblematicsLayouts: " + this.problematicLayouts + "\n";
    }
}
