.class public abstract Lcom/miui/internal/variable/Android_View_ViewGroup_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/IManagedClassProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Landroid/view/ViewGroup;",
        ">;",
        "Lcom/miui/internal/variable/IManagedClassProxy;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    const-class v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getTagChildrenSequenceState(Landroid/view/ViewGroup;)Z
    .locals 1

    .line 27
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iget-boolean p1, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mTagChildrenSequenceState:Z

    return p1
.end method

.method public setTagChildrenSequenceState(Landroid/view/ViewGroup;Z)V
    .locals 1

    .line 22
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/variable/Android_View_View_class;->getCustomizedValue(Landroid/view/View;)Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;

    move-result-object p1

    iput-boolean p2, p1, Lcom/miui/internal/variable/Android_View_View_class$CustomizedValue;->mTagChildrenSequenceState:Z

    .line 24
    return-void
.end method
