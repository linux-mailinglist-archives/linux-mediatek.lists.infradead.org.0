Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB05216610E
	for <lists+linux-mediatek@lfdr.de>; Thu, 20 Feb 2020 16:35:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQZwpetfThwrmadVOCQuFdSniicLzmZ0H7b6A+AGwhc=; b=WbDIxBeXYJ34S+
	CbwGxoLODI3iO6UIkQQPIriASynqRrmi3zRJw8fz6fO+cvKiSeK1V8Q3UHU5BHeN/vlwuw67+ixgF
	L45ncOSNj/T3nl0QYLN0ZnoAlGs99T5tv2/MRqYbgQo7ujI1kJpF9g9ZkHCBNzAu+/34ZyELSpjtJ
	Lbw4GyDu1gm+/Vc1vNWNhyKikahFEmX+QGjTcE5fgOCvU+r9WXRuyAtW/omE6scysghSe52lXJpgO
	AkLSVKo7VmuHvT3WgfYe33TROeNm5IoxR6H7I9B/gX/nyNq2L0uFlkHGXKkHILaeCKc+ZJknJnkdS
	K6x4DBsELavhfYujoHQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4nrc-0000wE-If; Thu, 20 Feb 2020 15:35:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nra-0000w2-MA
 for linux-mediatek@bombadil.infradead.org; Thu, 20 Feb 2020 15:35:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2HGcoFXbyVbTV3eg7hismyxhu6dj14paC3J0LZjVjv8=; b=i4hY3tTDi/JgNFYah1/2MqI2qc
 QcrrG7ymUS+Q637uDKp2J6KGLOFvsi7Zbmq2vNeB5tuEKyF6VhAko8zLod0oZ4SUOtbh9fZqd1+We
 rv7hOO4FM3/QivPvPBIXz2rde5wa71lZAy3YlqDD2sVAmunKx1hqZ2edNVJwazzbHMGZsNuYC772y
 nWW8+ZiXGlyfgQgKBqS0dHfWBBQI0Re9IgXuR/NMiM5qAiKHKXwJDDOkzVWGqUjLuzDCudYVsCdQq
 qXkfCT62K78sANA8i27q9tvqPWQFaz3dYhV31htM85ugzu444av0cx+441f26UzaMb5fxMJE+e899
 d2/Oe00g==;
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nXQ-0005rA-Rs
 for linux-mediatek@lists.infradead.org; Thu, 20 Feb 2020 15:14:55 +0000
Received: by mail-lj1-x241.google.com with SMTP id o15so4609959ljg.6
 for <linux-mediatek@lists.infradead.org>; Thu, 20 Feb 2020 07:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2HGcoFXbyVbTV3eg7hismyxhu6dj14paC3J0LZjVjv8=;
 b=JppMnoQE1IcDd7cMooO8wrTS949VE3Rf9AEiBdqR3i0G7zQTgWdaA9zCNpK2nYMEWw
 kdLYxDmax/UsnA0Cv+uY3LrBW6q18f4OfUyT5xq1zbK6HzFfybo1dk17VlgKGLI+U4z3
 7lNET/xn2+cEztXYx4WWqal15IyBWAzi+wWObB8DD2FK3IMs2ZV8crf3Cvxebps+zChJ
 Yu24UACGUX/UpQ7uJA7aKSiEzzROngph4UQXkds9qL8NNSbETmh3kGHjYfYYJwv6wUnG
 /fVwZM6feFreuwPXNsvHpdAdR+XqOxqlmz7h6Rc/bayCu/YyImcXg+LrdYaExGefUNeI
 JqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2HGcoFXbyVbTV3eg7hismyxhu6dj14paC3J0LZjVjv8=;
 b=WCJHoV3/K4V/M+8lkrNsQ6O+nZxtv3QJWHdELyyyo/0myjuv2OEeMh2RnU6FMjC/t7
 YNZ8dn433jb8v6Rw9yIfKfRS3fiyMWgdc5RsCzXHQvdI0Fp6U2oJds/jdc59hptKI4rq
 qtGso1LUoCzQlWLRHO8mqyVJf0EjF8st76vzo53g+v0F7BtOOgsGDw3Ap7HLmEX4T881
 3hPvVkFxZeDShwhfRxDDMQDYqmlnmBPgP9x4kR83BEJYtKuTQaS/hXpFBLyfFQAw9e3g
 YRgNhkbRW44F5qF/zIVG/jFWHIwWH0wc5Xa1JkD/ff0jlLDuoEDUHCOrRu8/LHd72qr0
 rrqw==
X-Gm-Message-State: APjAAAWpUcPB3HHCHKNudDdbIxQkVvbe9hAN58FB0uvbdBQnJj9CojQS
 ocmuMTKdDdDPZ8r+uTP7quqR6IN2Ikcs6fKXsS2NkA==
X-Google-Smtp-Source: APXvYqximU2hF5YQAA6qDC6WVIbiCSJIlm99ooaxT3H0C5jTGqzKFkBU+ytUiMHpo+Q/TVwdXj+JqE+CEg5n3KPW7DA=
X-Received: by 2002:a2e:9013:: with SMTP id h19mr19780468ljg.223.1582211689431; 
 Thu, 20 Feb 2020 07:14:49 -0800 (PST)
MIME-Version: 1.0
References: <20200218055247.74s2xa7veqx2do34@kili.mountain>
In-Reply-To: <20200218055247.74s2xa7veqx2do34@kili.mountain>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 20 Feb 2020 16:14:38 +0100
Message-ID: <CACRpkdYWsWNg9oetuHPt0VEz+WKKiqfbfuCu503tpRyZ=7nV=A@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: mediatek: Fix some off by one bugs
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_151453_449750_E6C21025 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 kernel-janitors@vger.kernel.org, Sean Wang <sean.wang@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Light Hsieh <light.hsieh@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 6:55 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:

> These comparisons should be >= instead of > to prevent accessing one
> element beyond the end of the hw->soc->pins[] array.
>
> Fixes: 3de7deefce69 ("pinctrl: mediatek: Check gpio pin number and use binary search in mtk_hw_pin_field_lookup()")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Matthias could you have a look at this patch?

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
