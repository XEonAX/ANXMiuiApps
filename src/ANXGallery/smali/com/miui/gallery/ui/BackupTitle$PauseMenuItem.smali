.class Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;
.super Ljava/lang/Object;
.source "BackupTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BackupTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PauseMenuItem"
.end annotation


# instance fields
.field private final hour:I

.field private final itemId:I

.field final synthetic this$0:Lcom/miui/gallery/ui/BackupTitle;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/BackupTitle;Ljava/lang/String;I)V
    .locals 1
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "hour"    # I

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;->itemId:I

    .line 83
    iput-object p2, p0, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;->title:Ljava/lang/String;

    .line 84
    iput p3, p0, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;->hour:I

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;

    .prologue
    .line 76
    iget v0, p0, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;->itemId:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;

    .prologue
    .line 76
    iget v0, p0, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;->hour:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/gallery/ui/BackupTitle$PauseMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method
