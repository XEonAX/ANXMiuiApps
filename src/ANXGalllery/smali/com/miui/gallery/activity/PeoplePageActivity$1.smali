.class Lcom/miui/gallery/activity/PeoplePageActivity$1;
.super Ljava/lang/Object;
.source "PeoplePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/activity/PeoplePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/PeoplePageActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/PeoplePageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/PeoplePageActivity;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/gallery/activity/PeoplePageActivity$1;->this$0:Lcom/miui/gallery/activity/PeoplePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/activity/PeoplePageActivity$1;->this$0:Lcom/miui/gallery/activity/PeoplePageActivity;

    invoke-static {v0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;)V

    .line 23
    return-void
.end method
