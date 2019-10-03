Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD75CA4DF
	for <lists+linux-mediatek@lfdr.de>; Thu,  3 Oct 2019 18:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFadOQcH0PXoBxDBraNjIdOfMNgOF4BTkk9D/+a7/Ok=; b=UgD36taGlsp4BD
	6MtkiT0n/WgnGAU+lwnVhLjBXL8ejgSYJJNRDEQfYSnFcuKwKHYAj4Wxy1BLLXUy1OE3VUWfZYXJr
	oX5MibjAouHEg0QNZXmsjlcdUSiSMuGDkL4IRjVI6XWksrH67yFFw7ZxV9O52AZ1hjS7G2TSME8GV
	Ir+vw6+XxPO9gxE1X7EibNWSONnKg1xNdk8+BorD2pX1sMjdYCbp4l6hluexxediMBE2RQyq5jXR6
	AlfjWB9gtf5Sdt3WoLyNY/kLAPxtDIj9pv7rSy8cZ5oUNoMWqTe+/FrTNnZPKTexA0dI1WMRniHp1
	MFUMCHDVp19scFWqpnSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG43U-0002a6-3v; Thu, 03 Oct 2019 16:34:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG43K-0002Pj-0n; Thu, 03 Oct 2019 16:34:07 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4263921783;
 Thu,  3 Oct 2019 16:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570120445;
 bh=3Bz1OUoxGDjgeT98hppsGEw91e3Ye36LUrMKlBtqcSU=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=j/K162GHR8smbdtnU3kJ9VWiqmsrEwDD+5DiuSNo/q0iv/ITY+YoqW2+yjI1POSoX
 UhSWY7N6nAoeYF55YeI0ITa7Ya91LlcNCgn/L8LsNRbxn5mYuNKwbhWSHK+NX8cnXW
 fLO2UPAEPnRh95wTpBNoIcAzJl/2QPOMSTploa9s=
MIME-Version: 1.0
In-Reply-To: <20191002160632.11140-1-krzk@kernel.org>
References: <20191002160632.11140-1-krzk@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kevin Hilman <khilman@baylibre.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, etnaviv@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: power: Convert Generic Power Domain
 bindings to json-schema
User-Agent: alot/0.8.1
Date: Thu, 03 Oct 2019 09:34:04 -0700
Message-Id: <20191003163405.4263921783@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_093406_089176_7D1B5969 
X-CRM114-Status: UNSURE (   5.54  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting Krzysztof Kozlowski (2019-10-02 09:06:30)
> Convert Generic Power Domain bindings to DT schema format using
> json-schema.  The consumer bindings are split to separate file.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
