.class public abstract Lorg/osmdroid/views/overlay/OverlayWithIW;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "OverlayWithIW.java"


# instance fields
.field protected mId:Ljava/lang/String;

.field protected mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

.field protected mRelatedObject:Ljava/lang/Object;

.field protected mSnippet:Ljava/lang/String;

.field protected mSubDescription:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public closeInfoWindow()V
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    .line 119
    :cond_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoWindow()Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    return-object v0
.end method

.method public getRelatedObject()Ljava/lang/Object;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mRelatedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getSubDescription()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mSubDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isInfoWindowOpen()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    .line 124
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onDetach()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 126
    iput-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mRelatedObject:Ljava/lang/Object;

    .line 128
    :cond_0
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V
    .locals 0
    .param p1, "infoWindow"    # Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 109
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    .line 110
    return-void
.end method

.method public setRelatedObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "relatedObject"    # Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mRelatedObject:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0
    .param p1, "snippet"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mSnippet:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setSubDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "subDescription"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mSubDescription:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mTitle:Ljava/lang/String;

    .line 44
    return-void
.end method
