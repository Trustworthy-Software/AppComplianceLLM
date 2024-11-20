.class public Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;
.super Ljava/lang/Object;
.source "NetworkAvailabliltyCheck.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/INetworkAvailablityCheck;


# instance fields
.field private final mConnectionManager:Landroid/net/ConnectivityManager;

.field private final mHasNetworkStatePermission:Z

.field private final mIsX86:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    nop

    .line 24
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mConnectionManager:Landroid/net/ConnectivityManager;

    .line 25
    const-string v0, "Android-x86"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mIsX86:Z

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mHasNetworkStatePermission:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getCellularDataNetworkAvailable()Z
    .locals 4

    .line 63
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mHasNetworkStatePermission:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 65
    return v1

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mConnectionManager:Landroid/net/ConnectivityManager;

    .line 68
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 69
    .local v0, "mobile":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public getNetworkAvailable()Z
    .locals 5

    .line 34
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mHasNetworkStatePermission:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 36
    return v1

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mConnectionManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 39
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 40
    return v2

    .line 42
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    return v1

    .line 45
    :cond_2
    nop

    .line 46
    iget-boolean v3, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mIsX86:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method public getRouteToPathExists(I)Z
    .locals 1
    .param p1, "hostAddress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public getWiFiNetworkAvailable()Z
    .locals 3

    .line 52
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mHasNetworkStatePermission:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 54
    return v1

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/NetworkAvailabliltyCheck;->mConnectionManager:Landroid/net/ConnectivityManager;

    .line 57
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 58
    .local v0, "wifi":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
