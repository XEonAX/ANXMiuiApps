package android.support.constraint.solver;

public class GoalRow extends ArrayRow {
    public GoalRow(Cache cache) {
        super(cache);
    }

    public void addError(SolverVariable error) {
        super.addError(error);
        error.usageInRowCount--;
    }
}
