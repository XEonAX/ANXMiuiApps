.class public Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;
.super Ljava/lang/Object;
.source "AlbumShareInvitationReceiver.java"

# interfaces
.implements Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/AlbumShareInvitationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOpt:I

.field private final mUpdateListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V
    .locals 0
    .param p1, "opt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener",
            "<",
            "Lcom/miui/gallery/share/Path;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "updateListener":Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;, "Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener<Lcom/miui/gallery/share/Path;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;->mOpt:I

    .line 88
    iput-object p2, p0, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;->mUpdateListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    .line 89
    return-void
.end method

.method static synthetic access$200(Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;)Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;->mUpdateListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;->onCompletion(Ljava/lang/Void;Ljava/lang/Long;IZ)V

    return-void
.end method

.method public onCompletion(Ljava/lang/Void;Ljava/lang/Long;IZ)V
    .locals 8
    .param p1, "key"    # Ljava/lang/Void;
    .param p2, "data"    # Ljava/lang/Long;
    .param p3, "errorCode"    # I
    .param p4, "cancel"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 93
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, "context":Landroid/content/Context;
    iget v2, p0, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;->mOpt:I

    .line 96
    .local v2, "opt":I
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 97
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 108
    :cond_0
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_1

    .line 109
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.miui.gallery.intent.action.CLOUD_VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_2

    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_4

    .line 121
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 122
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/share/CloudSharerMediaSet;->buildPathById(J)Lcom/miui/gallery/share/Path;

    move-result-object v3

    .line 127
    .local v3, "path":Lcom/miui/gallery/share/Path;
    new-instance v4, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener$1;

    invoke-direct {v4, p0, v3}, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener$1;-><init>(Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;Lcom/miui/gallery/share/Path;)V

    iget-object v5, p0, Lcom/miui/gallery/share/AlbumShareInvitationReceiver$AddListener;->mUpdateListener:Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;

    invoke-static {v3, v4, v5}, Lcom/miui/gallery/share/AlbumShareUIManager;->updateShareUrlLongAuto(Lcom/miui/gallery/share/Path;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;Lcom/miui/gallery/share/AlbumShareUIManager$OnCompletionListener;)V

    .line 154
    .end local v3    # "path":Lcom/miui/gallery/share/Path;
    :cond_3
    :goto_1
    return-void

    .line 146
    :cond_4
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_3

    .line 147
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 148
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/gallery/share/CloudSharerMediaSet;->buildPathById(J)Lcom/miui/gallery/share/Path;

    move-result-object v3

    .line 149
    .restart local v3    # "path":Lcom/miui/gallery/share/Path;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/miui/gallery/share/AlbumShareInvitationReceiver;->access$100(Lcom/miui/gallery/share/Path;I)V

    goto :goto_1

    .line 151
    .end local v3    # "path":Lcom/miui/gallery/share/Path;
    :cond_5
    const/4 v4, -0x2

    invoke-static {v4}, Lcom/miui/gallery/share/UIHelper;->toastError(I)V

    goto :goto_1

    .line 114
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
