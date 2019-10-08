Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614AAD03C3
	for <lists+linux-mediatek@lfdr.de>; Wed,  9 Oct 2019 01:02:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZTpofzNL7FFj0qfiG5lsyDjdprTCUKXhT1jlTEFJKA=; b=pu1rKbXHxBpgqq
	Fyf/5pYl6954wVhUHw2xy0PgMMZnwMmFNrJzvekVZwALcnXb5JPn8b4CnhcgVe7UmmVpHjCGWbcnx
	KbHX4K6Ih17PD9gSmryI8iyzVZxJX790hS/K30pSw6G/9d6lEQ+ZQyjhtUXhc47SapXZvlnFjf6QP
	xE9YZ39KcHzecqZLYgl14h6k4VjUFpzT4WM+Gm2l3kYKviyi/zw7laaQza0X0Kp7Kf7Y3jMuuKECN
	OOfeS/PuiSBGxS4tp2A7n1Zc6alQvgCvIE8ADHgG2F34YEjMEB5qcWv4YkUqEQfNLyKEP90qhqgak
	CyZ/JKrQtDK7A0X+DFFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHyV5-00031o-Cx; Tue, 08 Oct 2019 23:02:39 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHyV2-00030w-2n
 for linux-mediatek@lists.infradead.org; Tue, 08 Oct 2019 23:02:37 +0000
Received: by mail-qk1-x744.google.com with SMTP id y189so476545qkc.3
 for <linux-mediatek@lists.infradead.org>; Tue, 08 Oct 2019 16:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=FMMLRXtAe40zCMcCtxvdP8i9kT/PLF62chlFdNDSpa8=;
 b=ZFzM3Avgh1nIZ9kRcYhwKQbctGHGKBEN6jhP8dxhduJ+4EPcJfdb2kEs36EGwPKTgY
 GDu8aQ/hL/5/0pTwv3fuQIb7NEH80mv1qvtHUPcsc7IUlxs5BVnnMg1tTykwNYvNgV8e
 U6cvjWUrJCi32I4kQ9et1ar15nltNXj7yQLsGBAHP5fONJlcWrRWecoAIR0PCwqx/fah
 AohsRSAmEUBkgvOT6hpYM+z0EAqfUnvZowytJBkjh18ZY1GnBTSZJ5Jm4uRphbNrAzgv
 0249cyY1Six4SoTA371Mti6zSmwExvlG7oCD2Xv9qNzjaPKZVK7C7/2o2RoBWuVuYZO7
 CgOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=FMMLRXtAe40zCMcCtxvdP8i9kT/PLF62chlFdNDSpa8=;
 b=o6Ile7gpbU1pv6NvmjOiHRnXFQUm0aoeoJmCRjpJ8wldqesc5fF/J0p6rTpLjSkQju
 AQy3TQY2Qx6WBlvhfqJa7ZUaJCM8lFxILGKlGASb+P1OUHm6jf1fZEVoiqG13UZ+oMMv
 Olwn28Rm/S00cqmISuHaPh7WFXYsERh2/9higL1F1hIUa2If4sOw9TIfvdn7xLkCHf+y
 lyT220xa2wx+X0GozpvYjZeukzSAN3jJTXtaOoUCGcMj3kZuOte1164ha9RBfMv33oCr
 vD5agM5aH7yLC5UvIpZCAMDDUc7LbqLtEx6V0GnOTuhunv/0UTOGSczf/vlPAXFfA8aB
 0E3g==
X-Gm-Message-State: APjAAAX8hfIviy+d/g4zDhx0eUK2mtbkzeQR1iTO4ZonwfYgoQZ8eA6t
 ogir8Ka60YLZ3EEV6lHtSIjldQ==
X-Google-Smtp-Source: APXvYqxvRqb+z5HpoQj48byKYFHJWFucwPuLS22/dDgDrpAZfGfXzGsk3d6nAPeBA6lls6A278C1Zg==
X-Received: by 2002:a37:a646:: with SMTP id p67mr569346qke.489.1570575754654; 
 Tue, 08 Oct 2019 16:02:34 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id a19sm204875qtc.58.2019.10.08.16.02.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 16:02:34 -0700 (PDT)
Date: Tue, 8 Oct 2019 16:02:22 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: MarkLee <Mark-MC.Lee@mediatek.com>
Subject: Re: [PATCH net,v2 0/2] Update MT7629 to support PHYLINK API
Message-ID: <20191008160222.0bdb7f47@cakuba.netronome.com>
In-Reply-To: <20191007070844.14212-1-Mark-MC.Lee@mediatek.com>
References: <20191007070844.14212-1-Mark-MC.Lee@mediatek.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_160236_185256_20CBE93D 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Nelson Chang <nelson.chang@mediatek.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Rene van Dorst <opensource@vdorst.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 15:08:42 +0800, MarkLee wrote:
> This patch target to update mt7629 eth driver and dts to support PHYLINK

Thanks for the patches Mark. The description of the set should probably
say that it _fixes_ some issues. Right now it sounds a little bit like
you were adding a new feature. Could you rewrite the cover letter to
give us a better idea what issues this patch set is fixing and why
those issues occur?

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
