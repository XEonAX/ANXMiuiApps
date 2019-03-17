.class public final Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
.super Ljava/lang/Object;
.source "AlbumShareUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/AlbumShareUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlockMessage"
.end annotation


# instance fields
.field final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final mCancelable:Z

.field final mListener:Landroid/content/DialogInterface$OnCancelListener;

.field final mMessage:Ljava/lang/CharSequence;

.field final mTitle:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "cancelable"    # Z
    .param p5, "l"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 112
    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->mTitle:Ljava/lang/CharSequence;

    .line 113
    iput-object p3, p0, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->mMessage:Ljava/lang/CharSequence;

    .line 114
    iput-boolean p4, p0, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->mCancelable:Z

    .line 115
    iput-object p5, p0, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->mListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 116
    return-void
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->create(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "cancelable"    # Z

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->create(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "cancelable"    # Z
    .param p4, "l"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 142
    new-instance v0, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method


# virtual methods
.method public buildDialog()Lmiui/app/ProgressDialog;
    .locals 3

    .prologue
    .line 119
    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 120
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    :cond_0
    const/4 v1, 0x0

    .line 129
    :goto_0
    return-object v1

    .line 123
    :cond_1
    new-instance v1, Lmiui/app/ProgressDialog;

    invoke-direct {v1, v0}, Lmiui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 124
    .local v1, "dialog":Lmiui/app/ProgressDialog;
    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 126
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 127
    iget-boolean v2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->mCancelable:Z

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setCancelable(Z)V

    .line 128
    iget-object v2, p0, Lcom/miui/gallery/share/AlbumShareUIManager$BlockMessage;->mListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Lmiui/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method
