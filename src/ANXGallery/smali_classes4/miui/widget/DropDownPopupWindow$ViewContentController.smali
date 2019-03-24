.class public Lmiui/widget/DropDownPopupWindow$ViewContentController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/DropDownPopupWindow$ContentController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewContentController"
.end annotation


# instance fields
.field private Rv:I

.field private Rw:Landroid/view/View;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mContext:Landroid/content/Context;

    .line 185
    iput p2, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->Rv:I

    .line 186
    return-void
.end method

.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;I)V
    .locals 1

    .line 179
    invoke-virtual {p1}, Lmiui/widget/DropDownPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Landroid/content/Context;I)V

    .line 180
    invoke-virtual {p1, p0}, Lmiui/widget/DropDownPopupWindow;->setContentController(Lmiui/widget/DropDownPopupWindow$ContentController;)V

    .line 181
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lmiui/widget/DropDownPopupWindow$ViewContentController;->initContent()V

    .line 219
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->Rw:Landroid/view/View;

    return-object v0
.end method

.method protected initContent()V
    .locals 3

    .line 189
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->Rw:Landroid/view/View;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 191
    iget v1, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->Rv:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->Rw:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$ViewContentController;->Rw:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiui/widget/DropDownPopupWindow$ViewContentController;->onContentInit(Landroid/view/View;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .locals 2

    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 214
    :cond_0
    return-void
.end method

.method protected onContentInit(Landroid/view/View;)V
    .locals 0

    .line 196
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .line 206
    return-void
.end method

.method public onShow()V
    .locals 0

    .line 201
    return-void
.end method
