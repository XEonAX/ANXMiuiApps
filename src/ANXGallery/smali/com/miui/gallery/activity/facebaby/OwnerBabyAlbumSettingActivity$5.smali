.class Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$5;
.super Ljava/lang/Object;
.source "OwnerBabyAlbumSettingActivity.java"

# interfaces
.implements Lmiui/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$5;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lmiui/widget/DatePicker;III)V
    .locals 4
    .param p1, "view"    # Lmiui/widget/DatePicker;
    .param p2, "myyear"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$5;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iput p2, v0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthdayYear:I

    .line 219
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$5;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    add-int/lit8 v1, p3, 0x1

    iput v1, v0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthdayMonth:I

    .line 220
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$5;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iput p4, v0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthdayDay:I

    .line 221
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$5;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$5;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget v1, v1, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthdayYear:I

    iget-object v2, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$5;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget v2, v2, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthdayMonth:I

    iget-object v3, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$5;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget v3, v3, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthdayDay:I

    invoke-static {v1, v2, v3}, Lcom/miui/gallery/activity/facebaby/BabyAlbumSettingActivityBase;->combine2Birthday(III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthday:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$5;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v0, v0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mChooseDate:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity$5;->this$0:Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;

    iget-object v1, v1, Lcom/miui/gallery/activity/facebaby/OwnerBabyAlbumSettingActivity;->mBirthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    return-void
.end method
