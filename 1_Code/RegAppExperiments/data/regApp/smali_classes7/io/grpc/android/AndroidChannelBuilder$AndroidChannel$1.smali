.class Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$1;
.super Ljava/lang/Object;
.source "AndroidChannelBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;->configureNetworkMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;

.field final synthetic val$defaultNetworkCallback:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;


# direct methods
.method constructor <init>(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$defaultNetworkCallback"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$1;->this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;

    iput-object p2, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$1;->val$defaultNetworkCallback:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 222
    iget-object v0, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$1;->this$0:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;

    invoke-static {v0}, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;->access$100(Lio/grpc/android/AndroidChannelBuilder$AndroidChannel;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$1;->val$defaultNetworkCallback:Lio/grpc/android/AndroidChannelBuilder$AndroidChannel$DefaultNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 223
    return-void
.end method
