.class public Lcom/google/firebase/firestore/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/util/Logger$Level;
    }
.end annotation


# static fields
.field private static logLevel:Lcom/google/firebase/firestore/util/Logger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/google/firebase/firestore/util/Logger$Level;->WARN:Lcom/google/firebase/firestore/util/Logger$Level;

    sput-object v0, Lcom/google/firebase/firestore/util/Logger;->logLevel:Lcom/google/firebase/firestore/util/Logger$Level;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "toLog"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/google/firebase/firestore/util/Logger$Level;->DEBUG:Lcom/google/firebase/firestore/util/Logger$Level;

    invoke-static {v0, p0, p1, p2}, Lcom/google/firebase/firestore/util/Logger;->doLog(Lcom/google/firebase/firestore/util/Logger$Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method private static varargs doLog(Lcom/google/firebase/firestore/util/Logger$Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "level"    # Lcom/google/firebase/firestore/util/Logger$Level;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "toLog"    # Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/google/firebase/firestore/util/Logger$Level;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/firebase/firestore/util/Logger;->logLevel:Lcom/google/firebase/firestore/util/Logger$Level;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/Logger$Level;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "24.9.1"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 43
    const-string v2, "(%s) [%s]: "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "value":Ljava/lang/String;
    sget-object v1, Lcom/google/firebase/firestore/util/Logger$1;->$SwitchMap$com$google$firebase$firestore$util$Logger$Level:[I

    invoke-virtual {p0}, Lcom/google/firebase/firestore/util/Logger$Level;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "Firestore"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to log something on level NONE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :pswitch_1
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 47
    :pswitch_2
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 56
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isDebugEnabled()Z
    .locals 2

    .line 37
    sget-object v0, Lcom/google/firebase/firestore/util/Logger;->logLevel:Lcom/google/firebase/firestore/util/Logger$Level;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/Logger$Level;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/firebase/firestore/util/Logger$Level;->DEBUG:Lcom/google/firebase/firestore/util/Logger$Level;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/Logger$Level;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setLogLevel(Lcom/google/firebase/firestore/util/Logger$Level;)V
    .locals 0
    .param p0, "level"    # Lcom/google/firebase/firestore/util/Logger$Level;

    .line 32
    sput-object p0, Lcom/google/firebase/firestore/util/Logger;->logLevel:Lcom/google/firebase/firestore/util/Logger$Level;

    .line 33
    return-void
.end method

.method public static varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "toLog"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/firebase/firestore/util/Logger$Level;->WARN:Lcom/google/firebase/firestore/util/Logger$Level;

    invoke-static {v0, p0, p1, p2}, Lcom/google/firebase/firestore/util/Logger;->doLog(Lcom/google/firebase/firestore/util/Logger$Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method
