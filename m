Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E696F734D6
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 19:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VaW/LB4E0rAsIQpKlYGcEIR21TK0BL4h5gs+ec6EL1c=; b=LRiv6+sNkUUc8S
	BzKoWRoDrxBrn9jW9RwRT+OfBnQalDcbERO0dXIaZwbsfeUVY6o5XfTEhfwmjnqegLRkKCyhYWzot
	uhqXjgu08/yEvSdLQsBTQzk8DBtG4Fn2YbSkrmJr1W8UlVOSboAhvMenTNzFBFcBQKA0TJMhbvFOP
	Jko05UIvT7tHkuFb+RL+BGnd5MudZRIHS8BDCjWGa6/kOKcMtV+CZ6FtLiw/9U4/JtrxxCROYM2LF
	MQfHSfCc8vLkciiyftFCvvRX+YaSZoOIsD07y00h60t9H70ERy/ZqD+mb23uYieI3lMEpouBETmJ8
	spsEQBGwTyo9SawDsvmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKrv-0000Nk-Ev; Wed, 24 Jul 2019 17:15:59 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKrR-0007v4-Bc
 for linux-mediatek@lists.infradead.org; Wed, 24 Jul 2019 17:15:31 +0000
Received: (wp-smtpd smtp.wp.pl 7512 invoked from network);
 24 Jul 2019 19:15:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1563988524; bh=gEkDwIuDO2Mlt47g7fHTqzHcSxdtZTDr5XQG+4+AvdU=;
 h=From:To:Cc:Subject;
 b=ntAPjIlLwGvOxgC2v+xm/bV3mQvMUDMExK5e9IszAZdswFVOM1CMFo9sCJ1pKqGLF
 kpQZCuccigvIcEx+x1AdexCezOy9xB+tz6O3Y7xqR2h9mmc1Ypn5frAT1xfDiD+D4g
 91q1Fzzc/O8xKBgRvC2r2763CVpjRIG6Mu7bIfb0=
Received: from 014.152-60-66-biz-static.surewest.net (HELO
 cakuba.netronome.com) (kubakici@wp.pl@[66.60.152.14])
 (envelope-sender <kubakici@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <navid.emamdoost@gmail.com>; 24 Jul 2019 19:15:23 +0200
Date: Wed, 24 Jul 2019 10:15:14 -0700
From: Jakub Kicinski <kubakici@wp.pl>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] mt76_init_sband_2g: null check the allocation
Message-ID: <20190724101514.29efc10a@cakuba.netronome.com>
In-Reply-To: <20190723221954.9233-1-navid.emamdoost@gmail.com>
References: <20190723221954.9233-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
X-WP-MailID: 3fa229c2b67e2a6425aaa1fc737c8941
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [EYOU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_101529_761752_1E50F48D 
X-CRM114-Status: UNSURE (   3.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kubakici[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: secalert@redhat.com, linux-wireless@vger.kernel.org, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, emamd001@umn.edu,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 smccaman@umn.edu, Matthias Brugger <matthias.bgg@gmail.com>,
 netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 23 Jul 2019 17:19:54 -0500, Navid Emamdoost wrote:
> devm_kzalloc may fail and return NULL. So the null check is needed.
> 
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>

Acked-by: Jakub Kicinski <kubakici@wp.pl>

Thanks!

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
