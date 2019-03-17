.class public Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "FeedbackPolicyNoticeFragment.java"


# instance fields
.field private mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private buildUserNotice(Landroid/app/Activity;II)Landroid/text/SpannableStringBuilder;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userNoticeMessageFormat"    # I
    .param p3, "userPolicyRes"    # I

    .prologue
    .line 73
    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "userPolicy":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {p1, p2, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$3;-><init>(Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;Landroid/app/Activity;)V

    .line 81
    .local v1, "policyUrlClickListener":Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 82
    .local v3, "userNotice":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 83
    .local v2, "start":I
    new-instance v5, Lcom/miui/gallery/text/UrlSpan;

    invoke-direct {v5, v1}, Lcom/miui/gallery/text/UrlSpan;-><init>(Lcom/miui/gallery/text/UrlSpan$UrlSpanOnClickListener;)V

    .line 85
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    const/16 v7, 0x21

    .line 83
    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 86
    return-object v3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->setCancelable(Z)V

    .line 29
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0440

    const v5, 0x7f0c0441

    invoke-direct {p0, v3, v4, v5}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->buildUserNotice(Landroid/app/Activity;II)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 36
    .local v2, "userNotice":Landroid/text/SpannableStringBuilder;
    new-instance v3, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0510

    .line 37
    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    .line 38
    invoke-virtual {v3, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c050b

    new-instance v5, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$2;

    invoke-direct {v5, p0}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$2;-><init>(Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;)V

    .line 39
    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$1;

    invoke-direct {v5, p0}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment$1;-><init>(Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;)V

    .line 47
    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 52
    invoke-virtual {p0}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0c0162

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    .local v0, "builder":Lmiui/app/AlertDialog$Builder;
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    .line 55
    .local v1, "dialog":Lmiui/app/AlertDialog;
    return-object v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onStart()V

    .line 66
    invoke-virtual {p0}, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 67
    .local v0, "messageText":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 68
    return-void
.end method

.method public setOnPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/miui/gallery/search/feedback/FeedbackPolicyNoticeFragment;->mPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    return-void
.end method
