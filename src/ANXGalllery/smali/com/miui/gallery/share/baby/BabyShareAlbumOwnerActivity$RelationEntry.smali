.class Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;
.super Ljava/lang/Object;
.source "BabyShareAlbumOwnerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelationEntry"
.end annotation


# instance fields
.field relation:Ljava/lang/String;

.field relationTextId:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "relation"    # Ljava/lang/String;
    .param p2, "relationTextId"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;->relation:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/miui/gallery/share/baby/BabyShareAlbumOwnerActivity$RelationEntry;->relationTextId:I

    .line 41
    return-void
.end method
