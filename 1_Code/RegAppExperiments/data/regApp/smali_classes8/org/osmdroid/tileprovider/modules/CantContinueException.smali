.class public Lorg/osmdroid/tileprovider/modules/CantContinueException;
.super Ljava/lang/Exception;
.source "CantContinueException.java"


# static fields
.field private static final serialVersionUID:J = 0x2089118ea6c888dL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pDetailMessage"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "pThrowable"    # Ljava/lang/Throwable;

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 20
    return-void
.end method
