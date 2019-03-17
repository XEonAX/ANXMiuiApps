.class public Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "SlideshowIntervalDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$CompleteListener;
    }
.end annotation


# instance fields
.field private mDialog:Lmiui/app/AlertDialog;

.field private mListener:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$CompleteListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;)Lmiui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->isTextValid(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;)Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$CompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->mListener:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$CompleteListener;

    return-object v0
.end method

.method private isTextValid(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    const/4 v0, 0x0

    .line 82
    .local v0, "newValue":I
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 83
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    const/16 v2, 0xe10

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 36
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$SlideShow;->getSlideShowInterval()I

    move-result v2

    .line 37
    .local v2, "interval":I
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04006c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 38
    .local v1, "editText":Landroid/widget/EditText;
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 40
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 41
    new-instance v3, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v3, v1}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c049a

    .line 43
    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    .line 44
    invoke-virtual {v3, v4, v6}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    .line 45
    invoke-virtual {v3, v4, v6}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    .line 47
    iget-object v3, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 48
    iget-object v3, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    new-instance v4, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;

    invoke-direct {v4, p0, v1}, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$1;-><init>(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 68
    iget-object v3, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->mDialog:Lmiui/app/AlertDialog;

    return-object v3
.end method

.method public setCompleteListener(Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$CompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$CompleteListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment;->mListener:Lcom/miui/gallery/ui/SlideshowIntervalDialogFragment$CompleteListener;

    .line 73
    return-void
.end method
