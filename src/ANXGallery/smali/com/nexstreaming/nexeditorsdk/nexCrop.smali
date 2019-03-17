.class public final Lcom/nexstreaming/nexeditorsdk/nexCrop;
.super Ljava/lang/Object;
.source "nexCrop.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;
    }
.end annotation


# static fields
.field public static final ABSTRACT_DIMENSION:I = 0x186a0

.field static final TAG:Ljava/lang/String; = "nexCrop"


# instance fields
.field private clip_druation:I

.field private facedetect_speed:I

.field private m_endLock:Z

.field private m_endMatrix:[F

.field m_endPositionBottom:I

.field m_endPositionLeft:I

.field m_endPositionRight:I

.field m_endPositionTop:I

.field private m_faceBounds_bottom:F

.field private m_faceBounds_left:F

.field private m_faceBounds_right:F

.field private m_faceBounds_set:Z

.field private m_faceBounds_top:F

.field m_facePositionBottom:I

.field m_facePositionLeft:I

.field m_facePositionRight:I

.field m_facePositionTop:I

.field private m_height:I

.field private final m_mediaPath:Ljava/lang/String;

.field m_rotatedEndPositionBottom:I

.field m_rotatedEndPositionLeft:I

.field m_rotatedEndPositionRight:I

.field m_rotatedEndPositionTop:I

.field m_rotatedFacePositionBottom:I

.field m_rotatedFacePositionLeft:I

.field m_rotatedFacePositionRight:I

.field m_rotatedFacePositionTop:I

.field m_rotatedStartPositionBottom:I

.field m_rotatedStartPositionLeft:I

.field m_rotatedStartPositionRight:I

.field m_rotatedStartPositionTop:I

.field m_rotation:I

.field private m_startLock:Z

.field private m_startMatrix:[F

.field m_startPositionBottom:I

.field m_startPositionLeft:I

.field m_startPositionRight:I

.field m_startPositionTop:I

.field private m_width:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionLeft:I

    .line 79
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionBottom:I

    .line 80
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionRight:I

    .line 81
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionTop:I

    .line 82
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionLeft:I

    .line 83
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionBottom:I

    .line 84
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionRight:I

    .line 85
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionTop:I

    .line 87
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionLeft:I

    .line 88
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionBottom:I

    .line 89
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionRight:I

    .line 90
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionTop:I

    .line 91
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionLeft:I

    .line 92
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionBottom:I

    .line 93
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionRight:I

    .line 94
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionTop:I

    .line 96
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionLeft:I

    .line 97
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionTop:I

    .line 98
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionRight:I

    .line 99
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionBottom:I

    .line 100
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionLeft:I

    .line 101
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionTop:I

    .line 102
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionRight:I

    .line 103
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionBottom:I

    .line 104
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startLock:Z

    .line 105
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endLock:Z

    .line 110
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    .line 111
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    .line 112
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    .line 1150
    const/16 v0, 0x65

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->facedetect_speed:I

    .line 1158
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->clip_druation:I

    .line 145
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_mediaPath:Ljava/lang/String;

    .line 146
    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    .line 147
    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    .line 148
    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    .line 149
    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->clip_druation:I

    .line 150
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_RAND:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {p0, v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    .line 151
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionLeft:I

    .line 79
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionBottom:I

    .line 80
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionRight:I

    .line 81
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionTop:I

    .line 82
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionLeft:I

    .line 83
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionBottom:I

    .line 84
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionRight:I

    .line 85
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionTop:I

    .line 87
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionLeft:I

    .line 88
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionBottom:I

    .line 89
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionRight:I

    .line 90
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionTop:I

    .line 91
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionLeft:I

    .line 92
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionBottom:I

    .line 93
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionRight:I

    .line 94
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionTop:I

    .line 96
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionLeft:I

    .line 97
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionTop:I

    .line 98
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionRight:I

    .line 99
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionBottom:I

    .line 100
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionLeft:I

    .line 101
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionTop:I

    .line 102
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionRight:I

    .line 103
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionBottom:I

    .line 104
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startLock:Z

    .line 105
    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endLock:Z

    .line 110
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    .line 111
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    .line 112
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    .line 1150
    const/16 v0, 0x65

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->facedetect_speed:I

    .line 1158
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->clip_druation:I

    .line 1108
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_startPositionLeft:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionLeft:I

    .line 1109
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_startPositionBottom:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionBottom:I

    .line 1110
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_startPositionRight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionRight:I

    .line 1111
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_startPositionTop:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionTop:I

    .line 1112
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_endPositionLeft:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionLeft:I

    .line 1113
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_endPositionBottom:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionBottom:I

    .line 1114
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_endPositionRight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionRight:I

    .line 1115
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_endPositionTop:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionTop:I

    .line 1117
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedStartPositionLeft:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionLeft:I

    .line 1118
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedStartPositionBottom:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionBottom:I

    .line 1119
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedStartPositionRight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionRight:I

    .line 1120
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedStartPositionTop:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionTop:I

    .line 1121
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedEndPositionLeft:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionLeft:I

    .line 1122
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedEndPositionBottom:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionBottom:I

    .line 1123
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedEndPositionRight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionRight:I

    .line 1124
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedEndPositionTop:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionTop:I

    .line 1126
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_facePositionLeft:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionLeft:I

    .line 1127
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_facePositionTop:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionTop:I

    .line 1128
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_facePositionRight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionRight:I

    .line 1129
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_facePositionBottom:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionBottom:I

    .line 1130
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedFacePositionLeft:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionLeft:I

    .line 1131
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedFacePositionTop:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionTop:I

    .line 1132
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedFacePositionRight:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionRight:I

    .line 1133
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedFacePositionBottom:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionBottom:I

    .line 1138
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotation:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    .line 1139
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_width:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    .line 1140
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_height:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    .line 1141
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_mediaPath:Ljava/lang/String;

    .line 1143
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_left:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_left:F

    .line 1144
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_top:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_top:F

    .line 1145
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_right:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_right:F

    .line 1146
    iget v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_bottom:F

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_bottom:F

    .line 1147
    iget-boolean v0, p2, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_set:Z

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_set:Z

    .line 1149
    return-void
.end method

.method private calculateFaceBounds()V
    .locals 19

    .prologue
    .line 963
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_set:Z

    if-eqz v2, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->loadImageForFaceRecognition()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 967
    if-eqz v3, :cond_0

    .line 970
    const/16 v2, 0x20

    new-array v4, v2, [Landroid/media/FaceDetector$Face;

    .line 971
    new-instance v2, Landroid/media/FaceDetector;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/16 v7, 0x20

    invoke-direct {v2, v5, v6, v7}, Landroid/media/FaceDetector;-><init>(III)V

    .line 972
    invoke-virtual {v2, v3, v4}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v5

    .line 973
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 974
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 975
    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    .line 976
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getWidth()I

    move-result v2

    int-to-float v9, v2

    .line 977
    invoke-virtual/range {p0 .. p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getHeight()I

    move-result v2

    int-to-float v10, v2

    .line 978
    const/high16 v2, 0x41f00000    # 30.0f

    div-float v11, v9, v2

    .line 979
    const/high16 v2, 0x41f00000    # 30.0f

    div-float v12, v10, v2

    .line 980
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    .line 982
    const-string v13, "nexCrop"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "face : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " c="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v4, v2

    invoke-virtual {v15}, Landroid/media/FaceDetector$Face;->confidence()F

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " e="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v4, v2

    invoke-virtual {v15}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " faceMinWidth="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " faceMinHeight="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    aget-object v13, v4, v2

    invoke-virtual {v13}, Landroid/media/FaceDetector$Face;->confidence()F

    move-result v13

    float-to-double v14, v13

    const-wide v16, 0x3fd999999999999aL    # 0.4

    cmpg-double v13, v14, v16

    if-gez v13, :cond_3

    .line 980
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 986
    :cond_3
    aget-object v13, v4, v2

    invoke-virtual {v13, v8}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 987
    aget-object v13, v4, v2

    invoke-virtual {v13}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v13

    .line 988
    cmpg-float v14, v13, v11

    if-ltz v14, :cond_2

    cmpg-float v14, v13, v12

    if-ltz v14, :cond_2

    .line 990
    iget v14, v8, Landroid/graphics/PointF;->x:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v13, v15

    sub-float/2addr v14, v15

    div-float/2addr v14, v9

    iget v15, v8, Landroid/graphics/PointF;->y:F

    const/high16 v16, 0x40400000    # 3.0f

    div-float v16, v13, v16

    sub-float v15, v15, v16

    div-float/2addr v15, v10

    iget v0, v8, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v17, v13, v17

    add-float v16, v16, v17

    div-float v16, v16, v9

    iget v0, v8, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    const/high16 v18, 0x40400000    # 3.0f

    div-float v13, v13, v18

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v13, v13, v18

    add-float v13, v13, v17

    div-float/2addr v13, v10

    move/from16 v0, v16

    invoke-virtual {v7, v14, v15, v0, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 991
    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_2

    .line 993
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 995
    const-string v2, "nexCrop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "face bounds : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 998
    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    .line 999
    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    .line 1000
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_5

    .line 1001
    iget v4, v6, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    sub-float/2addr v4, v5

    iput v4, v6, Landroid/graphics/RectF;->left:F

    .line 1002
    iget v4, v6, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, v6, Landroid/graphics/RectF;->right:F

    .line 1004
    :cond_5
    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-lez v2, :cond_6

    .line 1005
    iget v2, v6, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    sub-float/2addr v2, v4

    iput v2, v6, Landroid/graphics/RectF;->top:F

    .line 1006
    iget v2, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v6, Landroid/graphics/RectF;->bottom:F

    .line 1010
    :cond_6
    const-string v2, "nexCrop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "face bounds (final) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_set:Z

    .line 1013
    const/4 v2, 0x0

    iget v3, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_left:F

    .line 1014
    const/4 v2, 0x0

    iget v3, v6, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_top:F

    .line 1015
    iget v2, v6, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_right:F

    .line 1016
    iget v2, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_bottom:F

    goto/16 :goto_0
.end method

.method protected static clone(Lcom/nexstreaming/nexeditorsdk/nexCrop;)Lcom/nexstreaming/nexeditorsdk/nexCrop;
    .locals 2

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nexstreaming/nexeditorsdk/nexCrop;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method static enhancedCrop(Landroid/graphics/Rect;IIFF)V
    .locals 18

    .prologue
    .line 895
    move-object/from16 v0, p0

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 896
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 897
    move-object/from16 v0, p0

    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 898
    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 900
    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_0

    .line 924
    :goto_0
    return-void

    .line 904
    :cond_0
    sub-int/2addr v3, v2

    int-to-float v8, v3

    .line 905
    div-float v3, v8, p4

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    const v5, 0x47c35000    # 100000.0f

    mul-float/2addr v4, v5

    div-float v9, v3, v4

    .line 906
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    div-float v3, v8, p4

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 907
    int-to-float v3, v2

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    float-to-int v4, v3

    .line 908
    add-int v10, v2, v4

    .line 909
    sub-int v5, v2, v4

    .line 910
    const/high16 v3, 0x3f800000    # 1.0f

    .line 911
    sub-int v4, v2, v4

    :goto_1
    if-ge v4, v10, :cond_1

    .line 912
    int-to-float v2, v4

    mul-float/2addr v2, v9

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    int-to-float v2, v4

    mul-float/2addr v2, v9

    float-to-double v14, v2

    sub-double/2addr v12, v14

    int-to-float v2, v4

    mul-float/2addr v2, v9

    float-to-double v14, v2

    int-to-float v2, v4

    mul-float/2addr v2, v9

    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    sub-double v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    double-to-float v2, v12

    .line 914
    cmpl-float v11, v3, v2

    if-lez v11, :cond_2

    move v3, v4

    .line 911
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    move v3, v2

    goto :goto_1

    .line 920
    :cond_1
    div-float v2, v8, p4

    int-to-float v3, v5

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    .line 921
    int-to-float v3, v2

    add-float/2addr v3, v8

    float-to-int v3, v3

    .line 922
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 923
    const-string v2, "nexCrop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enhancedCrop() highQuality="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    move v2, v3

    move v3, v5

    goto :goto_2
.end method

.method private static getFitRwaPosition(IIFFZ)Landroid/graphics/Rect;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const v5, 0x186a0

    .line 859
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 860
    div-float v1, p2, p3

    .line 862
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 863
    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    .line 865
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 866
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 867
    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 868
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 877
    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v1, v5

    div-int/2addr v1, p1

    .line 878
    iget v2, v0, Landroid/graphics/Rect;->left:I

    mul-int/2addr v2, v5

    div-int/2addr v2, p0

    .line 879
    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int/2addr v3, v5

    div-int/2addr v3, p0

    .line 880
    iget v4, v0, Landroid/graphics/Rect;->top:I

    mul-int/2addr v4, v5

    div-int/2addr v4, p1

    .line 882
    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 883
    if-nez v4, :cond_2

    .line 884
    const-string v1, "nexCrop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFitRwaPosition() raw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_0
    :goto_1
    return-object v0

    .line 871
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-int v1, v1

    .line 872
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 873
    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 874
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 887
    :cond_2
    if-eqz p4, :cond_0

    .line 888
    invoke-static {v0, p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->enhancedCrop(Landroid/graphics/Rect;IIFF)V

    goto :goto_1
.end method

.method private isSolid()Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_mediaPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_mediaPath:Ljava/lang/String;

    const-string v1, "@solid:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_mediaPath:Ljava/lang/String;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadImageForFaceRecognition()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1024
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1025
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1026
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_mediaPath:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1027
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1028
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1030
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v1, v5, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v1, v5, :cond_1

    :cond_0
    move-object v0, v2

    .line 1057
    :goto_0
    return-object v0

    .line 1033
    :cond_1
    const/16 v1, 0x2d0

    .line 1034
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/lit16 v3, v3, 0x2d0

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, v4

    .line 1038
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1039
    :goto_1
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v4, v5

    int-to-double v4, v4

    int-to-double v6, v3

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_2

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v4, v5

    int-to-double v4, v4

    int-to-double v6, v1

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 1040
    :cond_2
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 1042
    :cond_3
    const-string v4, "nexCrop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadImageForFaceRecognition:   bounds decoded : width,height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; target w,h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; sampleSize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_mediaPath:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1045
    if-nez v1, :cond_4

    move-object v0, v2

    .line 1046
    goto :goto_0

    .line 1049
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v3, :cond_5

    .line 1050
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1051
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1052
    invoke-virtual {v3, v1, v10, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1053
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private matrixForRect(FFFF)Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 225
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 226
    neg-float v1, p1

    neg-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 227
    const v1, 0x3fe38e39

    sub-float v2, p3, p1

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, p4, p2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 228
    return-object v0
.end method

.method private matrixForRect(Landroid/graphics/Rect;)Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 221
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->matrixForRect(FFFF)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyCropSpeed(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V
    .locals 6

    .prologue
    .line 1167
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPosionLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1168
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1169
    const/4 v0, 0x0

    const/4 v1, 0x0

    mul-int/lit8 v2, p3, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, p4, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1170
    int-to-double v0, p3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v2, p4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1174
    :cond_0
    int-to-double v0, p5

    int-to-float v2, p6

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1175
    const/16 v1, 0x65

    if-ge p5, v1, :cond_2

    .line 1176
    iget v1, p2, Landroid/graphics/Rect;->left:I

    mul-int v2, p3, v0

    div-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    mul-int v3, p4, v0

    div-int/lit16 v3, v3, 0x3e8

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->right:I

    mul-int v4, p3, v0

    div-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v0, p4

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1181
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1182
    const/4 v0, 0x0

    const/4 v1, 0x0

    mul-int/lit8 v2, p3, 0x3

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, p4, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1183
    int-to-double v0, p3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v2, p4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1185
    :cond_1
    return-void

    .line 1179
    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, p3, 0x4

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, p4, 0x4

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, p3, 0x4

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v4, p4, 0x4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method fitStartEndPosition(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 844
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getWidth()I

    move-result v1

    .line 845
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getHeight()I

    move-result v0

    .line 847
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    .line 848
    :cond_0
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getHeight()I

    move-result v1

    .line 849
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getWidth()I

    move-result v0

    .line 851
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 853
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    .line 854
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 855
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 856
    return-void
.end method

.method public getClipDuration()I
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->clip_druation:I

    return v0
.end method

.method public getEndPosionLock()Z
    .locals 1

    .prologue
    .line 1196
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endLock:Z

    return v0
.end method

.method public getEndPosition(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const v2, 0x186a0

    .line 679
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 680
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionBottom:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 681
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionLeft:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 682
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionRight:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 683
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionTop:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 690
    :goto_0
    return-void

    .line 685
    :cond_1
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionBottom:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 686
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionLeft:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 687
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionRight:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 688
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionTop:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public getEndPositionRaw(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 804
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 805
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 806
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionLeft:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 807
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 808
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 815
    :goto_0
    return-void

    .line 810
    :cond_1
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 811
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionLeft:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 812
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 813
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public getFaceBounds(Landroid/graphics/Rect;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 938
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_mediaPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;

    move-result-object v0

    .line 939
    if-nez v0, :cond_0

    .line 940
    const-string v0, "nexCrop"

    const-string v1, "Second face detection with use filter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_mediaPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;-><init>(Ljava/io/File;ZLandroid/content/Context;)V

    .line 943
    :cond_0
    if-eqz v0, :cond_1

    .line 944
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 945
    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/kinemaster/utils/facedetect/a;->a(Landroid/graphics/RectF;)V

    .line 946
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 947
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 948
    iget v3, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 959
    :goto_0
    return-void

    .line 951
    :cond_1
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->calculateFaceBounds()V

    .line 952
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_set:Z

    if-nez v0, :cond_2

    .line 953
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 956
    :cond_2
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 957
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 958
    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_left:F

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget v3, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_top:F

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_right:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iget v4, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_bottom:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getFaceDetectSpeed()I
    .locals 1

    .prologue
    .line 1155
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->facedetect_speed:I

    return v0
.end method

.method public getFacePositionRaw(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 748
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 749
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionLeft:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 750
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 751
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 752
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 760
    :goto_0
    return-void

    .line 755
    :cond_1
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionLeft:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 756
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 757
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 758
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    return v0
.end method

.method public getRotate()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    return v0
.end method

.method getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;
    .locals 2

    .prologue
    .line 1062
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;-><init>()V

    .line 1063
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionLeft:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_startPositionLeft:I

    .line 1064
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionBottom:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_startPositionBottom:I

    .line 1065
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionRight:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_startPositionRight:I

    .line 1066
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionTop:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_startPositionTop:I

    .line 1067
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionLeft:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_endPositionLeft:I

    .line 1068
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionBottom:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_endPositionBottom:I

    .line 1069
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionRight:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_endPositionRight:I

    .line 1070
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionTop:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_endPositionTop:I

    .line 1072
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionLeft:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedStartPositionLeft:I

    .line 1073
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionBottom:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedStartPositionBottom:I

    .line 1074
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionRight:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedStartPositionRight:I

    .line 1075
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionTop:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedStartPositionTop:I

    .line 1076
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionLeft:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedEndPositionLeft:I

    .line 1077
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionBottom:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedEndPositionBottom:I

    .line 1078
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionRight:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedEndPositionRight:I

    .line 1079
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionTop:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedEndPositionTop:I

    .line 1081
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionLeft:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_facePositionLeft:I

    .line 1082
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionTop:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_facePositionTop:I

    .line 1083
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionRight:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_facePositionRight:I

    .line 1084
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionBottom:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_facePositionBottom:I

    .line 1085
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionLeft:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedFacePositionLeft:I

    .line 1086
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionTop:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedFacePositionTop:I

    .line 1087
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionRight:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedFacePositionRight:I

    .line 1088
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionBottom:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotatedFacePositionBottom:I

    .line 1093
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_rotation:I

    .line 1094
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_width:I

    .line 1095
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_height:I

    .line 1098
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_left:F

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_left:F

    .line 1099
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_top:F

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_top:F

    .line 1100
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_right:F

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_right:F

    .line 1101
    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_bottom:F

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_bottom:F

    .line 1102
    iget-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_faceBounds_set:Z

    iput-boolean v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexCropOf;->m_faceBounds_set:Z

    .line 1104
    return-object v0
.end method

.method public getStartPosionLock()Z
    .locals 1

    .prologue
    .line 1190
    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startLock:Z

    return v0
.end method

.method public getStartPosition(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const v2, 0x186a0

    .line 570
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 571
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionBottom:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 572
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionLeft:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 573
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionRight:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 574
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionTop:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 582
    :goto_0
    return-void

    .line 576
    :cond_1
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionBottom:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 577
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionLeft:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 578
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionRight:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 579
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionTop:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public getStartPositionRaw(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 776
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 777
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 778
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionLeft:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 779
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 780
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 788
    :goto_0
    return-void

    .line 782
    :cond_1
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionBottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 783
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionLeft:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 784
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionRight:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 785
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    return v0
.end method

.method public growToAspect(Landroid/graphics/Rect;F)V
    .locals 3

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 272
    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 276
    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 277
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 285
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    float-to-int v0, v0

    .line 281
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 282
    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 283
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V
    .locals 10

    .prologue
    .line 308
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 309
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 310
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPosition(Landroid/graphics/Rect;)V

    .line 311
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPosition(Landroid/graphics/Rect;)V

    .line 313
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getHeight()I

    move-result v3

    .line 315
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getWidth()I

    move-result v4

    .line 321
    :goto_0
    const/4 v0, 0x1

    if-lt v3, v0, :cond_1

    const/4 v0, 0x1

    if-ge v4, v0, :cond_3

    .line 429
    :cond_1
    :goto_1
    return-void

    .line 317
    :cond_2
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getWidth()I

    move-result v3

    .line 318
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getHeight()I

    move-result v4

    goto :goto_0

    .line 324
    :cond_3
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->isSolid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x2

    const/4 v2, 0x2

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 326
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 327
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 332
    :cond_4
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FILL:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    if-ne p2, v0, :cond_5

    .line 333
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 335
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 336
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 337
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 339
    :cond_5
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    if-ne p2, v0, :cond_6

    .line 340
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 342
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    .line 343
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 344
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 346
    :cond_6
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PANORAMA:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    if-ne p2, v0, :cond_b

    .line 347
    div-int v0, v3, v4

    int-to-float v0, v0

    .line 348
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    .line 349
    int-to-float v0, v3

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 350
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 351
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    sub-int v0, v4, v0

    invoke-direct {v2, v5, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 352
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v4, v6

    if-gez v0, :cond_7

    .line 353
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 354
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 356
    :cond_7
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 357
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 360
    :cond_8
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 361
    int-to-float v0, v4

    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 362
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 363
    new-instance v2, Landroid/graphics/Rect;

    sub-int v0, v3, v0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 364
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v4, v6

    if-gez v0, :cond_9

    .line 365
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 366
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 368
    :cond_9
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 369
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 374
    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 376
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 377
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 378
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 383
    :cond_b
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 387
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 388
    const/4 v0, 0x0

    const/4 v1, 0x0

    mul-int/lit8 v5, v3, 0x3

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v6, v4, 0x3

    div-int/lit8 v6, v6, 0x4

    invoke-virtual {v2, v0, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 389
    int-to-double v0, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v6

    double-to-int v0, v0

    int-to-double v6, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    double-to-int v1, v6

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 410
    :cond_c
    :goto_2
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 411
    new-instance v1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 412
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFaceDetectSpeed()I

    move-result v5

    .line 413
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getClipDuration()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->applyCropSpeed(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    .line 415
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 416
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 418
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 419
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v4, v6

    if-gez v0, :cond_11

    .line 420
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 421
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 428
    :cond_d
    :goto_3
    invoke-static {}, Ljava/lang/Math;->random()D

    goto/16 :goto_1

    .line 392
    :cond_e
    div-int/lit8 v0, v3, 0x4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    .line 393
    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    .line 394
    iget v1, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v1, v5

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 395
    iget v1, v2, Landroid/graphics/Rect;->right:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 397
    :cond_f
    div-int/lit8 v0, v4, 0x4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    .line 398
    const/4 v1, 0x2

    if-lt v0, v1, :cond_10

    .line 399
    iget v1, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v1, v5

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 400
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 403
    :cond_10
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    .line 404
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_c

    .line 405
    const/4 v0, 0x0

    const/4 v1, 0x0

    mul-int/lit8 v5, v3, 0x2

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v6, v4, 0x2

    div-int/lit8 v6, v6, 0x3

    invoke-virtual {v2, v0, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 406
    int-to-double v0, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v6

    double-to-int v0, v0

    int-to-double v6, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v8

    double-to-int v1, v6

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_2

    .line 423
    :cond_11
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 424
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method public randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;F)V
    .locals 10

    .prologue
    .line 432
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 433
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 434
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getStartPosition(Landroid/graphics/Rect;)V

    .line 435
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getEndPosition(Landroid/graphics/Rect;)V

    .line 437
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getHeight()I

    move-result v3

    .line 439
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getWidth()I

    move-result v4

    .line 445
    :goto_0
    const/4 v0, 0x1

    if-lt v3, v0, :cond_1

    const/4 v0, 0x1

    if-ge v4, v0, :cond_3

    .line 553
    :cond_1
    :goto_1
    return-void

    .line 441
    :cond_2
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getWidth()I

    move-result v3

    .line 442
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getHeight()I

    move-result v4

    goto :goto_0

    .line 448
    :cond_3
    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->isSolid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x2

    const/4 v2, 0x2

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 450
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 451
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 456
    :cond_4
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FILL:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    if-ne p2, v0, :cond_5

    .line 457
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 459
    invoke-virtual {p0, v0, p3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 460
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 461
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 463
    :cond_5
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->FIT:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    if-ne p2, v0, :cond_6

    .line 464
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 466
    invoke-virtual {p0, v0, p3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    .line 467
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 468
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 470
    :cond_6
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PANORAMA:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    if-ne p2, v0, :cond_b

    .line 471
    div-int v0, v3, v4

    int-to-float v0, v0

    .line 472
    cmpg-float v1, v0, p3

    if-gez v1, :cond_8

    .line 473
    int-to-float v0, v3

    div-float/2addr v0, p3

    float-to-int v0, v0

    .line 474
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 475
    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    sub-int v0, v4, v0

    invoke-direct {v2, v5, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 476
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v4, v6

    if-gez v0, :cond_7

    .line 477
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 478
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 480
    :cond_7
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 481
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 484
    :cond_8
    cmpl-float v0, v0, p3

    if-lez v0, :cond_a

    .line 485
    int-to-float v0, v4

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 486
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 487
    new-instance v2, Landroid/graphics/Rect;

    sub-int v0, v3, v0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 488
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v4, v6

    if-gez v0, :cond_9

    .line 489
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 490
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 492
    :cond_9
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 493
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 498
    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 500
    invoke-virtual {p0, v0, p3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 501
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 502
    invoke-virtual {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 507
    :cond_b
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 509
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 510
    const/4 v0, 0x0

    const/4 v1, 0x0

    mul-int/lit8 v5, v3, 0x3

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v6, v4, 0x3

    div-int/lit8 v6, v6, 0x4

    invoke-virtual {v2, v0, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 511
    int-to-double v0, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v6

    double-to-int v0, v0

    int-to-double v6, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v6, v8

    double-to-int v1, v6

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 532
    :cond_c
    :goto_2
    invoke-virtual {p0, v2, p3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 534
    new-instance v1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 536
    invoke-virtual {p0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->getFaceDetectSpeed()I

    move-result v5

    .line 537
    iget v6, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->clip_druation:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->applyCropSpeed(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    .line 539
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 540
    invoke-static {}, Lcom/nexstreaming/nexeditorsdk/nexApplicationConfig;->getAspectRatio()F

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->shrinkToAspect(Landroid/graphics/Rect;F)V

    .line 542
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 543
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v4, v6

    if-gez v0, :cond_11

    .line 544
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 545
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    .line 552
    :cond_d
    :goto_3
    invoke-static {}, Ljava/lang/Math;->random()D

    goto/16 :goto_1

    .line 514
    :cond_e
    div-int/lit8 v0, v3, 0x4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    .line 515
    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    .line 516
    iget v1, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v1, v5

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 517
    iget v1, v2, Landroid/graphics/Rect;->right:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 519
    :cond_f
    div-int/lit8 v0, v4, 0x4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    .line 520
    const/4 v1, 0x2

    if-lt v0, v1, :cond_10

    .line 521
    iget v1, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v1, v5

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 522
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 525
    :cond_10
    invoke-virtual {p0, v2, p3}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->growToAspect(Landroid/graphics/Rect;F)V

    .line 526
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_c

    .line 527
    const/4 v0, 0x0

    const/4 v1, 0x0

    mul-int/lit8 v5, v3, 0x2

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v6, v4, 0x2

    div-int/lit8 v6, v6, 0x3

    invoke-virtual {v2, v0, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 528
    int-to-double v0, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v6

    double-to-int v0, v0

    int-to-double v6, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v8

    double-to-int v1, v6

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_2

    .line 547
    :cond_11
    invoke-virtual {p0, v2}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setStartPosition(Landroid/graphics/Rect;)V

    .line 548
    invoke-virtual {p0, v1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->setEndPosition(Landroid/graphics/Rect;)V

    goto :goto_3
.end method

.method public resetStartEndPosition()V
    .locals 2

    .prologue
    const v1, 0x186a0

    const/4 v0, 0x0

    .line 823
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionLeft:I

    .line 824
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionBottom:I

    .line 825
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionRight:I

    .line 826
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionTop:I

    .line 827
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionLeft:I

    .line 828
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionBottom:I

    .line 829
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionRight:I

    .line 830
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionTop:I

    .line 832
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionLeft:I

    .line 833
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionBottom:I

    .line 834
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionRight:I

    .line 835
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionTop:I

    .line 836
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionLeft:I

    .line 837
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionBottom:I

    .line 838
    iput v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionRight:I

    .line 839
    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionTop:I

    .line 841
    return-void
.end method

.method public setClipDuration(I)V
    .locals 0

    .prologue
    .line 1160
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->clip_druation:I

    .line 1161
    return-void
.end method

.method public setEndPosition(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const v2, 0x186a0

    .line 715
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 716
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionBottom:I

    .line 717
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionLeft:I

    .line 718
    iget v0, p1, Landroid/graphics/Rect;->right:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionRight:I

    .line 719
    iget v0, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionTop:I

    .line 726
    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endMatrix:[F

    if-nez v0, :cond_1

    .line 727
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endMatrix:[F

    .line 728
    :cond_1
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->matrixForRect(Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 729
    return-void

    .line 721
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionBottom:I

    .line 722
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionLeft:I

    .line 723
    iget v0, p1, Landroid/graphics/Rect;->right:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionRight:I

    .line 724
    iget v0, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionTop:I

    goto :goto_0
.end method

.method public setEndPositionLock(Z)V
    .locals 0

    .prologue
    .line 1193
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endLock:Z

    .line 1194
    return-void
.end method

.method public setEndPositionRaw(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 651
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 652
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionBottom:I

    .line 653
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionLeft:I

    .line 654
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionRight:I

    .line 655
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedEndPositionTop:I

    .line 662
    :goto_0
    return-void

    .line 657
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionBottom:I

    .line 658
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionLeft:I

    .line 659
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionRight:I

    .line 660
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_endPositionTop:I

    goto :goto_0
.end method

.method public setFaceDetectSpeed(I)V
    .locals 0

    .prologue
    .line 1152
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->facedetect_speed:I

    .line 1153
    return-void
.end method

.method public setFacePosition(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const v2, 0x186a0

    .line 733
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 734
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionBottom:I

    .line 735
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionLeft:I

    .line 736
    iget v0, p1, Landroid/graphics/Rect;->right:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionRight:I

    .line 737
    iget v0, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedFacePositionTop:I

    .line 744
    :goto_0
    return-void

    .line 739
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionBottom:I

    .line 740
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionLeft:I

    .line 741
    iget v0, p1, Landroid/graphics/Rect;->right:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionRight:I

    .line 742
    iget v0, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_facePositionTop:I

    goto :goto_0
.end method

.method setRotate(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    if-eq p1, v0, :cond_1

    .line 155
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    .line 156
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 157
    :cond_0
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionLeft:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionBottom:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionRight:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionTop:I

    if-nez v0, :cond_1

    .line 158
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_RAND:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {p0, v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionLeft:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionBottom:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionRight:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionTop:I

    if-nez v0, :cond_1

    .line 162
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;->PAN_RAND:Lcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;

    invoke-virtual {p0, v2, v0}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->randomizeStartEndPosition(ZLcom/nexstreaming/nexeditorsdk/nexCrop$CropMode;)V

    goto :goto_0
.end method

.method public setStartPosition(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const v2, 0x186a0

    .line 608
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 609
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionBottom:I

    .line 610
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionLeft:I

    .line 611
    iget v0, p1, Landroid/graphics/Rect;->right:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionRight:I

    .line 612
    iget v0, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionTop:I

    .line 619
    :goto_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startMatrix:[F

    if-nez v0, :cond_1

    .line 620
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startMatrix:[F

    .line 621
    :cond_1
    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexCrop;->matrixForRect(Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 622
    return-void

    .line 614
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionBottom:I

    .line 615
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionLeft:I

    .line 616
    iget v0, p1, Landroid/graphics/Rect;->right:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionRight:I

    .line 617
    iget v0, p1, Landroid/graphics/Rect;->top:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionTop:I

    goto :goto_0
.end method

.method public setStartPositionLock(Z)V
    .locals 0

    .prologue
    .line 1187
    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startLock:Z

    .line 1188
    return-void
.end method

.method public setStartPositionRaw(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 631
    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    .line 632
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionBottom:I

    .line 633
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionLeft:I

    .line 634
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionRight:I

    .line 635
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_rotatedStartPositionTop:I

    .line 642
    :goto_0
    return-void

    .line 637
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionBottom:I

    .line 638
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionLeft:I

    .line 639
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionRight:I

    .line 640
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexCrop;->m_startPositionTop:I

    goto :goto_0
.end method

.method public shrinkToAspect(Landroid/graphics/Rect;F)V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 255
    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    float-to-int v0, v0

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 259
    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 260
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 268
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 265
    div-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 266
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method
