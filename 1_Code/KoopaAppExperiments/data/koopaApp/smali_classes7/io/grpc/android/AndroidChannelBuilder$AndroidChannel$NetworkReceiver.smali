.class Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndroidChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkReceiver"
.end annotation


# instance fields
.field private isConnected:Z

.field final synthetic this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;


# direct methods
.method private constructor <init>(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 326
    iput-object p1, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$NetworkReceiver;->this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 327
    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$NetworkReceiver;->isConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;Lio/grpc/android/AndroidChannelBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;
    .param p2, "x1"    # Lio/grpc/android/AndroidChannelBuilder$1;

    .line 326
    invoke-direct {p0, p1}, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$NetworkReceiver;-><init>(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 332
    nop

    .line 333
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 334
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 335
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v2, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$NetworkReceiver;->isConnected:Z

    .line 336
    .local v2, "wasConnected":Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$NetworkReceiver;->isConnected:Z

    .line 337
    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 338
    iget-object v3, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$NetworkReceiver;->this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;

    invoke-static {v3}, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;->access$400(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;)Lio/grpc/ManagedChannel;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/ManagedChannel;->enterIdle()V

    .line 340
    :cond_1
    return-void
.end method
