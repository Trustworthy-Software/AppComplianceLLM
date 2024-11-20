.class public Lorg/osmdroid/util/DuringSplashScreen;
.super Ljava/lang/Object;
.source "DuringSplashScreen.java"

# interfaces
.implements Lorg/osmdroid/util/SplashScreenable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runDuringSplashScreen()V
    .locals 1

    .line 15
    new-instance v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;-><init>()V

    .line 16
    .local v0, "sqlTileWriter":Lorg/osmdroid/tileprovider/modules/SqlTileWriter;
    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->runDuringSplashScreen()V

    .line 17
    return-void
.end method
