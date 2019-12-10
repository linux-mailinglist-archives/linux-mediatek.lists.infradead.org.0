Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC45E118E1F
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Dec 2019 17:49:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/m4znNqmc3n9pgIip63VqXv9uvfWCHSIT+1Y/WmQn8=; b=D7xMmLmVsPMnD4
	Je2b8nEwDjpCZtC1YgyVIGnNamAe6j7dT8qVwuHlBl9kjgDvJuF7DqZKDYZ2id2oR0Tpl6+zu0uP5
	oOvWH2knncQHkUiTd+dPaixXZAt+tdcIi4AshvEfWqGTS6TMRPXa5SXYi1qlOgwB5dxR20WtEge7c
	DyCe1pXeY4y7KYd/7vInL3zUciJOnVm5t9hI+MOTR5hAYuyYGXx+6pZXPdkIdP1SD/UnmlrRGF2BV
	227pgZfQvsdZJVJ1Q3yf3XNewG2zBJ977AA7ViG102qrEmsU3kjv7urI6pa8Nx8i0E8Pi8w6wJZ6R
	644USqqn+NYUSdUDuFrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieih4-0007M8-Es; Tue, 10 Dec 2019 16:49:02 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieih1-0007Lo-QR
 for linux-mediatek@lists.infradead.org; Tue, 10 Dec 2019 16:49:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iOz/6/0r92zuFKGcrFy7F2rvroSXU33rpP0w5fe4E3U=; b=IIdANMqMHtcM+54gM190UsDtPk
 SUHzsAqkxb4XGBvxmuA1c515zloQfMWEiXz+Oj3/kwS8lswkNGoCf6E1PKE7C/RqA1LItg1GwPRMc
 lff4LzwcffjJCBLQcQUCjNA+XiU05arpHnchX8RWm1i6ANWPAspUmaGSYpdmNIGBx4JA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ieigx-0005Pm-P1; Tue, 10 Dec 2019 17:48:55 +0100
Date: Tue, 10 Dec 2019 17:48:55 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Landen Chao <landen.chao@mediatek.com>
Subject: Re: [PATCH net-next 4/6] net: dsa: mt7530: Add the support of MT7531
 switch
Message-ID: <20191210164855.GE27714@lunn.ch>
References: <cover.1575914275.git.landen.chao@mediatek.com>
 <6d608dd024edc90b09ba4fe35417b693847f973c.1575914275.git.landen.chao@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d608dd024edc90b09ba4fe35417b693847f973c.1575914275.git.landen.chao@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_084859_855316_52E4EF1E 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, frank-w@public-files.de,
 f.fainelli@gmail.com, vivien.didelot@savoirfairelinux.com,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 opensource@vdorst.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> +static int mt7531_setup(struct dsa_switch *ds)
> +{
> +	/* Enable PHY power, since phy_device has not yet been created
> +	 * provided for phy_[read,write]_mmd_indirect is called, we provide
> +	 * our own mt7531_ind_mmd_phy_[read,write] to complete this
> +	 * function.
> +	 */
> +	val = mt7531_ind_mmd_phy_read(priv, 0, PHY_DEV1F,
> +				      MT7531_PHY_DEV1F_REG_403);
> +	val |= MT7531_PHY_EN_BYPASS_MODE;
> +	val &= ~MT7531_PHY_POWER_OFF;
> +	mt7531_ind_mmd_phy_write(priv, 0, PHY_DEV1F,
> +				 MT7531_PHY_DEV1F_REG_403, val);
> +

Is this power to all the PHYs? Or just one?

   Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
