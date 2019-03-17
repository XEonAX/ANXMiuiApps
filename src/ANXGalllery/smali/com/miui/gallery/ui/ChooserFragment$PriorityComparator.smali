.class Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;
.super Ljava/lang/Object;
.source "ChooserFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PriorityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mNormal:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/miui/gallery/ui/ChooserFragment$Component;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTemp:Lcom/miui/gallery/ui/ChooserFragment$Component;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mPriority:Ljava/util/HashMap;

    .line 832
    new-instance v0, Lcom/miui/gallery/ui/ChooserFragment$Component;

    invoke-direct {v0}, Lcom/miui/gallery/ui/ChooserFragment$Component;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mTemp:Lcom/miui/gallery/ui/ChooserFragment$Component;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/ChooserFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/ChooserFragment$1;

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;-><init>()V

    return-void
.end method

.method static synthetic access$302(Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;
    .param p1, "x1"    # Ljava/util/Comparator;

    .prologue
    .line 829
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mNormal:Ljava/util/Comparator;

    return-object p1
.end method


# virtual methods
.method build(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 848
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;>;"
    .local p2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "ChooserFragment"

    const-string v4, "build priority: %s"

    invoke-static {v3, v4, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 850
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 851
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mTemp:Lcom/miui/gallery/ui/ChooserFragment$Component;

    invoke-virtual {v3, v0}, Lcom/miui/gallery/ui/ChooserFragment$Component;->wrap(Landroid/content/pm/ResolveInfo;)Lcom/miui/gallery/ui/ChooserFragment$Component;

    .line 853
    iget-object v3, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mPriority:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mTemp:Lcom/miui/gallery/ui/ChooserFragment$Component;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 857
    const/4 v2, 0x0

    .line 858
    .local v2, "value":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;

    .line 859
    .local v1, "priority":Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v6, v7, v3}, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 861
    iget v2, v1, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->value:I

    .line 866
    .end local v1    # "priority":Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;
    :cond_2
    iget-object v3, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mPriority:Ljava/util/HashMap;

    new-instance v5, Lcom/miui/gallery/ui/ChooserFragment$Component;

    invoke-direct {v5, v0}, Lcom/miui/gallery/ui/ChooserFragment$Component;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const-string v3, "ChooserFragment"

    const-string v5, "assign priority of %s, %s by %d"

    iget-object v6, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mTemp:Lcom/miui/gallery/ui/ChooserFragment$Component;

    iget-object v6, v6, Lcom/miui/gallery/ui/ChooserFragment$Component;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mTemp:Lcom/miui/gallery/ui/ChooserFragment$Component;

    iget-object v7, v7, Lcom/miui/gallery/ui/ChooserFragment$Component;->mClassName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3, v5, v6, v7, v8}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 859
    .restart local v1    # "priority":Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 869
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v1    # "priority":Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;
    .end local v2    # "value":I
    :cond_4
    const-string v3, "ChooserFragment"

    const-string v4, "build finish"

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v4, 0x0

    .line 836
    iget-object v3, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mNormal:Ljava/util/Comparator;

    invoke-interface {v3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 837
    .local v2, "raw":I
    if-eqz v2, :cond_0

    .line 844
    .end local v2    # "raw":I
    :goto_0
    return v2

    .line 841
    .restart local v2    # "raw":I
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mPriority:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mTemp:Lcom/miui/gallery/ui/ChooserFragment$Component;

    invoke-virtual {v5, p1}, Lcom/miui/gallery/ui/ChooserFragment$Component;->wrap(Landroid/content/pm/ResolveInfo;)Lcom/miui/gallery/ui/ChooserFragment$Component;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Numbers;->unbox(Ljava/lang/Integer;I)I

    move-result v0

    .line 842
    .local v0, "lPriority":I
    iget-object v3, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mPriority:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->mTemp:Lcom/miui/gallery/ui/ChooserFragment$Component;

    invoke-virtual {v5, p2}, Lcom/miui/gallery/ui/ChooserFragment$Component;->wrap(Landroid/content/pm/ResolveInfo;)Lcom/miui/gallery/ui/ChooserFragment$Component;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/miui/gallery/util/Numbers;->unbox(Ljava/lang/Integer;I)I

    move-result v1

    .line 844
    .local v1, "rPriority":I
    if-ge v0, v1, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 829
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/ui/ChooserFragment$PriorityComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
