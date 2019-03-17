.class public Lcom/miui/gallery/ui/PhotoPageTopBar;
.super Ljava/lang/Object;
.source "PhotoPageTopBar.java"


# instance fields
.field private mLocation:Landroid/widget/TextView;

.field private mOperationView:Landroid/view/View;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTopLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const v1, 0x7f120245

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const v1, 0x7f120246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTitle:Landroid/widget/TextView;

    .line 21
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const v1, 0x7f120248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mSubTitle:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const v1, 0x7f120249

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mLocation:Landroid/widget/TextView;

    .line 23
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const v1, 0x7f120244

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mOperationView:Landroid/view/View;

    .line 24
    return-void
.end method


# virtual methods
.method public getOperationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mOperationView:Landroid/view/View;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p2}, Lcom/miui/gallery/data/LocationUtil;->isLocationValidate(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mLocation:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mLocation:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageTopBar;->mTopLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    return-void
.end method
