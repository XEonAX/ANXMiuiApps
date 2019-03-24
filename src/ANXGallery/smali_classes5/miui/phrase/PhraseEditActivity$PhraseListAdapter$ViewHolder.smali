.class Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PhraseEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private textView:Landroid/widget/TextView;

.field final synthetic this$1:Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;


# direct methods
.method private constructor <init>(Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;->this$1:Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;Lmiui/phrase/PhraseEditActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;
    .param p2, "x1"    # Lmiui/phrase/PhraseEditActivity$1;

    .line 283
    invoke-direct {p0, p1}, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;-><init>(Lmiui/phrase/PhraseEditActivity$PhraseListAdapter;)V

    return-void
.end method

.method static synthetic access$500(Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;

    .line 283
    iget-object v0, p0, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 283
    iput-object p1, p0, Lmiui/phrase/PhraseEditActivity$PhraseListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    return-object p1
.end method
