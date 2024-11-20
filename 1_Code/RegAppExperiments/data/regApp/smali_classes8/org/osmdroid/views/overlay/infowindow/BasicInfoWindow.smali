.class public Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;
.super Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
.source "BasicInfoWindow.java"


# static fields
.field public static final UNDEFINED_RES_ID:I

.field static mDescriptionId:I

.field static mImageId:I

.field static mSubDescriptionId:I

.field static mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    .line 37
    sput v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    .line 38
    sput v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    .line 39
    sput v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mImageId:I

    return-void
.end method

.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "layoutResId"    # I
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    .line 56
    sget v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->setResIds(Landroid/content/Context;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    new-instance v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow$1;-><init>(Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    return-void
.end method

.method private static setResIds(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id/bubble_title"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id/bubble_description"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id/bubble_subdescription"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id/bubble_image"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mImageId:I

    .line 47
    sget v2, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    if-eqz v2, :cond_0

    sget v2, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    if-eqz v2, :cond_0

    sget v2, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicInfoWindow: unable to get res ids in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OsmDroid"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    .line 105
    return-void
.end method

.method public onOpen(Ljava/lang/Object;)V
    .locals 8
    .param p1, "item"    # Ljava/lang/Object;

    .line 72
    move-object v0, p1

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 73
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "title":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 75
    const-string v1, ""

    .line 76
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 77
    const-string v2, "OsmDroid"

    const-string v3, "Error trapped, BasicInfoWindow.open, mView is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 80
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    sget v3, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 82
    .local v2, "temp":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_2
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->getSnippet()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "snippet":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 86
    const-string v3, ""

    .line 87
    :cond_3
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 88
    .local v4, "snippetHtml":Landroid/text/Spanned;
    iget-object v5, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    sget v6, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mDescriptionId:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, p0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mView:Landroid/view/View;

    sget v6, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mSubDescriptionId:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 92
    .local v5, "subDescText":Landroid/widget/TextView;
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->getSubDescription()Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "subDesc":Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 94
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_4
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :goto_0
    return-void
.end method
