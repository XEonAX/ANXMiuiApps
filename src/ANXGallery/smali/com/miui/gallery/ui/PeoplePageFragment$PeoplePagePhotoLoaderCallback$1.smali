.class Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$1;
.super Ljava/lang/Object;
.source "PeoplePageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;->initialSetGroupToastDialog(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback$1;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$PeoplePagePhotoLoaderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 464
    const-string v0, "has_toast_how_to_set_group"

    const/4 v1, 0x1

    .line 465
    invoke-static {v0, v1}, Lcom/miui/gallery/preference/PreferenceHelper;->putBoolean(Ljava/lang/String;Z)V

    .line 468
    return-void
.end method
