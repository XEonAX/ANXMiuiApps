.class public Landroid/support/constraint/solver/SolverVariable;
.super Ljava/lang/Object;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/SolverVariable$Type;
    }
.end annotation


# static fields
.field private static uniqueConstantId:I

.field private static uniqueErrorId:I

.field private static uniqueId:I

.field private static uniqueSlackId:I

.field private static uniqueUnrestrictedId:I


# instance fields
.field public computedValue:F

.field definitionId:I

.field public id:I

.field mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

.field mClientEquationsCount:I

.field private mName:Ljava/lang/String;

.field mType:Landroid/support/constraint/solver/SolverVariable$Type;

.field public strength:I

.field strengthVector:[F

.field public usageInRowCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 41
    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueSlackId:I

    .line 42
    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    .line 43
    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueUnrestrictedId:I

    .line 44
    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueConstantId:I

    .line 45
    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueId:I

    return-void
.end method

.method public constructor <init>(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 50
    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 51
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 55
    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->strengthVector:[F

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    .line 59
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 60
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 120
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 124
    return-void
.end method

.method static increaseErrorId()V
    .locals 1

    .prologue
    .line 89
    sget v0, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/constraint/solver/SolverVariable;->uniqueErrorId:I

    .line 90
    return-void
.end method


# virtual methods
.method public final addToRow(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 3
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 173
    :goto_1
    return-void

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 169
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/support/constraint/solver/ArrayRow;

    iput-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    .line 171
    :cond_2
    iget-object v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    iget v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    aput-object p1, v1, v2

    .line 172
    iget v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    goto :goto_1
.end method

.method public final removeFromRow(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 7
    .param p1, "row"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    .line 176
    iget v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 177
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 178
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_2

    .line 179
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 180
    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    add-int v4, v1, v2

    iget-object v5, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    add-int v6, v1, v2

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    :cond_0
    iget v3, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 186
    .end local v2    # "j":I
    :cond_1
    return-void

    .line 177
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    .line 198
    sget-object v0, Landroid/support/constraint/solver/SolverVariable$Type;->UNKNOWN:Landroid/support/constraint/solver/SolverVariable$Type;

    iput-object v0, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 199
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->strength:I

    .line 200
    iput v2, p0, Landroid/support/constraint/solver/SolverVariable;->id:I

    .line 201
    iput v2, p0, Landroid/support/constraint/solver/SolverVariable;->definitionId:I

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/SolverVariable;->computedValue:F

    .line 203
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 204
    iput v1, p0, Landroid/support/constraint/solver/SolverVariable;->usageInRowCount:I

    .line 205
    return-void
.end method

.method public setType(Landroid/support/constraint/solver/SolverVariable$Type;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Landroid/support/constraint/solver/SolverVariable;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 222
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    const-string v0, ""

    .line 233
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    return-object v0
.end method

.method public final updateReferencesWithNewDefinition(Landroid/support/constraint/solver/ArrayRow;)V
    .locals 5
    .param p1, "definition"    # Landroid/support/constraint/solver/ArrayRow;

    .prologue
    const/4 v4, 0x0

    .line 189
    iget v0, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 190
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 191
    iget-object v2, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/support/constraint/solver/ArrayRow;->variables:Landroid/support/constraint/solver/ArrayLinkedVariables;

    iget-object v3, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquations:[Landroid/support/constraint/solver/ArrayRow;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, p1, v4}, Landroid/support/constraint/solver/ArrayLinkedVariables;->updateFromRow(Landroid/support/constraint/solver/ArrayRow;Landroid/support/constraint/solver/ArrayRow;Z)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iput v4, p0, Landroid/support/constraint/solver/SolverVariable;->mClientEquationsCount:I

    .line 194
    return-void
.end method
