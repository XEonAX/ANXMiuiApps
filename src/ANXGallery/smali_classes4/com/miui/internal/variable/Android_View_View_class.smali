.class public abstract Lcom/miui/internal/variable/Android_View_View_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;,
        Lcom/miui/internal/variable/Android_View_View_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Landroid/view/View;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# static fields
.field private static final kK:Landroid/util/SparseIntArray;

.field private static final kL:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private static final kM:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/util/async/ConcurrentWeakHashMap<",
            "Landroid/view/View;",
            "Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kL:Landroid/util/SparseArray;

    .line 25
    new-instance v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-direct {v0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kM:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    .line 29
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const v2, 0x101009c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x101009e

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x101009f

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a4

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a5

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a6

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a7

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10100a9

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int v2, v1, v2

    const v3, 0x10102fe

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_first_h:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_middle_h:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_last_h:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_single_h:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_first_v:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_middle_v:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_last_v:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    sget v2, Lmiui/R$attr;->state_single_v:I

    sget-object v3, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    shl-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    const-class v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 54
    return-void
.end method

.method private static a([I)I
    .locals 4

    .line 121
    nop

    .line 122
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 123
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, p0, v0

    .line 124
    invoke-static {v3}, Lcom/miui/internal/variable/Android_View_View_class;->i(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method private static declared-synchronized i(I)I
    .locals 3

    const-class v0, Lcom/miui/internal/variable/Android_View_View_class;

    monitor-enter v0

    .line 104
    nop

    .line 105
    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 106
    :try_start_0
    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 107
    if-nez v1, :cond_1

    .line 108
    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 111
    const/4 v1, 0x1

    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    shl-int/2addr v1, v2

    .line 112
    sget-object v2, Lcom/miui/internal/variable/Android_View_View_class;->kK:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "State attribute cannot exceed 32!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    goto :goto_0

    .line 103
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 117
    :cond_2
    :goto_0
    monitor-exit v0

    return v1
.end method


# virtual methods
.method public abstract createSnapshot(Landroid/view/View;Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
.end method

.method protected getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;
    .locals 2

    .line 71
    sget-object v0, Lcom/miui/internal/variable/Android_View_View_class;->kM:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-virtual {v0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    .line 72
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    invoke-direct {v0}, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;-><init>()V

    .line 74
    sget-object v1, Lcom/miui/internal/variable/Android_View_View_class;->kM:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-virtual {v1, p1, v0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    return-object v0
.end method

.method public getHorizontalState(Landroid/view/View;)I
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iget p1, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHorizontalState:I

    return p1
.end method

.method public getVerticalState(Landroid/view/View;)I
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iget p1, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mVerticalState:I

    return p1
.end method

.method public hasInitViewSequenceStates(Landroid/view/View;)Z
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iget-boolean p1, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHasInitViewSequenceStates:Z

    return p1
.end method

.method protected onCreateDrawableState(Landroid/view/View;[II)[I
    .locals 5

    .line 131
    nop

    .line 132
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getHorizontalState(Landroid/view/View;)I

    move-result v0

    .line 133
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getVerticalState(Landroid/view/View;)I

    move-result p1

    .line 135
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 136
    invoke-static {p2}, Lcom/miui/internal/variable/Android_View_View_class;->a([I)I

    move-result v2

    invoke-static {v0}, Lcom/miui/internal/variable/Android_View_View_class;->i(I)I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {p1}, Lcom/miui/internal/variable/Android_View_View_class;->i(I)I

    move-result v3

    or-int/2addr v2, v3

    .line 137
    const-class v3, Lcom/miui/internal/variable/Android_View_View_class;

    monitor-enter v3

    .line 138
    :try_start_0
    sget-object v4, Lcom/miui/internal/variable/Android_View_View_class;->kL:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 139
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    if-nez v4, :cond_4

    .line 141
    if-eqz p2, :cond_0

    array-length v3, p2

    goto :goto_0

    .line 143
    :cond_0
    move v3, v1

    :goto_0
    add-int/lit8 v4, v3, 0x2

    new-array v4, v4, [I

    .line 144
    if-eqz v3, :cond_1

    .line 145
    invoke-static {p2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :cond_1
    aput v0, v4, v3

    .line 148
    add-int/lit8 v3, v3, 0x1

    aput p1, v4, v3

    .line 149
    const-class p1, Lcom/miui/internal/variable/Android_View_View_class;

    monitor-enter p1

    .line 150
    :try_start_1
    sget-object p2, Lcom/miui/internal/variable/Android_View_View_class;->kL:Landroid/util/SparseArray;

    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    .line 151
    sget-object p2, Lcom/miui/internal/variable/Android_View_View_class;->kL:Landroid/util/SparseArray;

    invoke-virtual {p2, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    :cond_2
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 139
    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 157
    :cond_3
    move-object v4, p2

    :cond_4
    :goto_1
    if-eqz p3, :cond_6

    .line 158
    if-nez v4, :cond_5

    .line 159
    new-array v4, p3, [I

    goto :goto_2

    .line 161
    :cond_5
    array-length p1, v4

    add-int/2addr p1, p3

    new-array p1, p1, [I

    .line 162
    array-length p2, v4

    invoke-static {v4, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    nop

    .line 167
    move-object v4, p1

    :cond_6
    :goto_2
    return-object v4
.end method

.method public abstract relayout(Landroid/view/View;)V
.end method

.method public setHasInitViewSequenceStates(Landroid/view/View;Z)V
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iput-boolean p2, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHasInitViewSequenceStates:Z

    .line 101
    return-void
.end method

.method public setHorizontalState(Landroid/view/View;I)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iput p2, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mHorizontalState:I

    .line 85
    return-void
.end method

.method public abstract setImportantForAccessibilityNoHideDescendants(Landroid/view/View;)V
.end method

.method public abstract setLeftDirectly(Landroid/view/View;I)V
.end method

.method public abstract setRightDirectly(Landroid/view/View;I)V
.end method

.method public abstract setScrollXDirectly(Landroid/view/View;I)V
.end method

.method public abstract setScrollYDirectly(Landroid/view/View;I)V
.end method

.method public setVerticalState(Landroid/view/View;I)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iput p2, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mVerticalState:I

    .line 93
    return-void
.end method
