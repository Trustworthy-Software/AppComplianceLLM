.class public final Lcom/google/firebase/firestore/auth/User;
.super Ljava/lang/Object;
.source "User.java"


# static fields
.field public static final UNAUTHENTICATED:Lcom/google/firebase/firestore/auth/User;


# instance fields
.field private final uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/firebase/firestore/auth/User;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/auth/User;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/firestore/auth/User;->UNAUTHENTICATED:Lcom/google/firebase/firestore/auth/User;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/firebase/firestore/auth/User;->uid:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 47
    return v0

    .line 49
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/auth/User;

    .line 54
    .local v2, "user":Lcom/google/firebase/firestore/auth/User;
    iget-object v3, p0, Lcom/google/firebase/firestore/auth/User;->uid:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v0, v2, Lcom/google/firebase/firestore/auth/User;->uid:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/google/firebase/firestore/auth/User;->uid:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 50
    .end local v2    # "user":Lcom/google/firebase/firestore/auth/User;
    :cond_4
    :goto_1
    return v1
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/firebase/firestore/auth/User;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/firebase/firestore/auth/User;->uid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/firebase/firestore/auth/User;->uid:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User(uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/auth/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
