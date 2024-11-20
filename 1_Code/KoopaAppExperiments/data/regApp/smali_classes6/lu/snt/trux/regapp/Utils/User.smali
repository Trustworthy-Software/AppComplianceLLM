.class public Llu/snt/trux/regapp/Utils/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private birthDate:Ljava/lang/String;

.field private height:I

.field private name:Ljava/lang/String;

.field private sex:Ljava/lang/String;

.field private surname:Ljava/lang/String;

.field private weight:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "surname"    # Ljava/lang/String;
    .param p3, "birthDate"    # Ljava/lang/String;
    .param p4, "height"    # I
    .param p5, "weight"    # D
    .param p7, "sex"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Llu/snt/trux/regapp/Utils/User;->name:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Llu/snt/trux/regapp/Utils/User;->surname:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Llu/snt/trux/regapp/Utils/User;->birthDate:Ljava/lang/String;

    .line 22
    iput p4, p0, Llu/snt/trux/regapp/Utils/User;->height:I

    .line 23
    iput-wide p5, p0, Llu/snt/trux/regapp/Utils/User;->weight:D

    .line 24
    iput-object p7, p0, Llu/snt/trux/regapp/Utils/User;->sex:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getBirthDate()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Llu/snt/trux/regapp/Utils/User;->birthDate:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 61
    iget v0, p0, Llu/snt/trux/regapp/Utils/User;->height:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Llu/snt/trux/regapp/Utils/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Llu/snt/trux/regapp/Utils/User;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getSurname()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Llu/snt/trux/regapp/Utils/User;->surname:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()D
    .locals 2

    .line 69
    iget-wide v0, p0, Llu/snt/trux/regapp/Utils/User;->weight:D

    return-wide v0
.end method

.method public setBirthDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthDate"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Llu/snt/trux/regapp/Utils/User;->birthDate:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 65
    iput p1, p0, Llu/snt/trux/regapp/Utils/User;->height:I

    .line 66
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Llu/snt/trux/regapp/Utils/User;->name:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0
    .param p1, "sex"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Llu/snt/trux/regapp/Utils/User;->sex:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setSurname(Ljava/lang/String;)V
    .locals 0
    .param p1, "surname"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Llu/snt/trux/regapp/Utils/User;->surname:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setWeight(D)V
    .locals 0
    .param p1, "weight"    # D

    .line 73
    iput-wide p1, p0, Llu/snt/trux/regapp/Utils/User;->weight:D

    .line 74
    return-void
.end method
