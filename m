Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A958FAEDCA
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Sep 2019 16:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ArVcbJyOFxXJXgafyjEQAbHXgGjw7N92QfDG/3ZsRaI=; b=tVN6ZgXlSrDJ8j
	VvuKXMpvVoR64M48GkNzj8lEAKiqItCW34d0GiNxa8nrSw9C0yp5lAdW9pVOu1L72OECgM73JDdgb
	RyctjqEAMBYO+LHhSmGAxftUZnRGvuhFrlUfNSCIfbrdBiMIeX8GQPSWRnWb8VTfXd5f8j9Cd6QoI
	5mNBuWc8dc1RkrwI8g2DtoPLNZGcOflMwkXbc8a6HMoO551R5bvspNONp/5mTir+ATKrTDmlhWZBG
	WHs09Y43aN2LgqGPk3z8wiyOIOTO5y4q6xR01oJmPqaXyo/y/0IPsdgQrhHpfuhnm4ValLxmr8EBT
	QVdAor0ADgAfHi8Tzf3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hW6-0000Gr-58; Tue, 10 Sep 2019 14:53:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hW3-0000G7-05
 for linux-mediatek@lists.infradead.org; Tue, 10 Sep 2019 14:53:12 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C48421479;
 Tue, 10 Sep 2019 14:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568127190;
 bh=NnZvpAPp1JY2JAEz2JDDpJXD0IBzD0bjDvth6kMNPJg=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=mI+egIP/Ls8WMbn49fMaaO+nsJwgreE2LqKTz86Li6BopVAlXgnyEnriclpgAUb18
 iCG2+qd6ZPlYnaqEn1KmZyk41vEgHsTR2mFevk1WQhFXr8oT2ZCpT482nffnk5Wil+
 Ct2aLv4jqPNHVNfAQa+lTLwbufXFlXmsfX2ltBtQ=
MIME-Version: 1.0
In-Reply-To: <1566206502-4347-9-git-send-email-mars.cheng@mediatek.com>
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
 <1566206502-4347-9-git-send-email-mars.cheng@mediatek.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Mars Cheng <mars.cheng@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>,
 Sean Wang <sean.wang@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 08/11] dt-bindings: mediatek: bindings for MT6779 clk
User-Agent: alot/0.8.1
Date: Tue, 10 Sep 2019 07:53:09 -0700
Message-Id: <20190910145310.2C48421479@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_075311_064902_38491426 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Loda Chou <loda.chou@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 mtk01761 <wendell.lin@mediatek.com>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting Mars Cheng (2019-08-19 02:21:39)
> From: mtk01761 <wendell.lin@mediatek.com>
> 
> This patch adds the binding documentation for
> apmixedsys, audiosys, camsys, imgsys, ipesys,
> infracfg, mfgcfg, mmsys, topckgen, vdecsys,
> and vencsys for Mediatek MT6779.
> 
> Signed-off-by: mtk01761 <wendell.lin@mediatek.com>
> ---

Applied to clk-next


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
