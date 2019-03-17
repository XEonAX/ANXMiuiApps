.class Lcom/miui/gallery/ui/PeoplePageGridItem$IdHolder;
.super Ljava/lang/Object;
.source "PeoplePageGridItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PeoplePageGridItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdHolder"
.end annotation


# instance fields
.field id:J

.field serverId:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/ui/PeoplePageGridItem;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/ui/PeoplePageGridItem;JLjava/lang/String;)V
    .locals 0
    .param p2, "id"    # J
    .param p4, "serverId"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageGridItem$IdHolder;->this$0:Lcom/miui/gallery/ui/PeoplePageGridItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p2, p0, Lcom/miui/gallery/ui/PeoplePageGridItem$IdHolder;->id:J

    .line 20
    iput-object p4, p0, Lcom/miui/gallery/ui/PeoplePageGridItem$IdHolder;->serverId:Ljava/lang/String;

    .line 21
    return-void
.end method
