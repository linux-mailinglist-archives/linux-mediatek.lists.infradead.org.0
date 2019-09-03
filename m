Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A20A7034
	for <lists+linux-mediatek@lfdr.de>; Tue,  3 Sep 2019 18:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OD3kOyv3FN6RvamBP9FVPe1K/HXiGXrOO5Ib4GbYzzU=; b=nwrFrJWwdUban9W6P8ATQsRIe
	mblkTrcquIueSt29HwhuJKkS2ugkolKW105J4tLSmQI2vHA7TGD+3DcHj/uJaidoxvsjLDCSx3k96
	4oNsGHDFnKixF5Qi59gnBXL4RK+rsnyKCGqr0FjN8UFh9LFE0Ab8v04+hMddM1UT+ZQQqEmjG/okv
	bwl9s0o16iGBaHrGMFZyvtn7nKwREdwxpN6Ymt3fZJ13l2N3vSQ+m3HnlBlPGZujuoqZKuvGC3Xid
	yVXxbjI06WistNs7zITBeYF9C3eVbahCt/Q1R6kZCk8PheHfZLiOMPxvP0TQh06gW6o25D5EAaBe6
	djhI+w2Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5BpY-0005ii-Sx; Tue, 03 Sep 2019 16:38:56 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5BpE-0005W9-AP; Tue, 03 Sep 2019 16:38:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SJ8sp8FvDRuyze29OLcsHkJ1fO3LZuMK56azmXlvfRM=; b=APOdbs66SGlqWMxcn+FKIVqGD
 tpbvxPtv+sFs7ndBggj7ezK7Mrix3mSgR/vgyiXmz5V5wCSEnj9fAuriGJY0xtnxbG/nbbMAPIoBZ
 OS5/sm/FO0LZp0EflXUnHsjTqHjyK3+V6ExMsM0RClrjcL3uRHOucUulOjdhVNPklxobo=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i5Bp8-0000lg-QW; Tue, 03 Sep 2019 16:38:30 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 5A9D62740A95; Tue,  3 Sep 2019 17:38:29 +0100 (BST)
Date: Tue, 3 Sep 2019 17:38:29 +0100
From: Mark Brown <broonie@kernel.org>
To: richtek.jeff.chang@gmail.com
Subject: Re: [PATCH] [MT6660] Mediatek Smart Amplifier Driver
Message-ID: <20190903163829.GB7916@sirena.co.uk>
References: <1567494501-3427-1-git-send-email-richtek.jeff.chang@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1567494501-3427-1-git-send-email-richtek.jeff.chang@gmail.com>
X-Cookie: You will pass away very quickly.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_093836_386987_BD5970D6 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 lgirdwood@gmail.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4408966299675440704=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============4408966299675440704==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UHN/qo2QbUvPLonB"
Content-Disposition: inline


--UHN/qo2QbUvPLonB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 03, 2019 at 03:08:21PM +0800, richtek.jeff.chang@gmail.com wrote:

> --- /dev/null
> +++ b/sound/soc/codecs/mt6660.c
> @@ -0,0 +1,802 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + */

Please make the entire comment block a C++ comment so things look more
consistent.

> +struct reg_size_table {
> +	u32 addr;
> +	u8 size;
> +};

> +static const struct reg_size_table mt6660_reg_size_table[] = {
> +	{ MT6660_REG_HPF1_COEF, 4 },
> +	{ MT6660_REG_HPF2_COEF, 4 },
> +	{ MT6660_REG_TDM_CFG3, 2 },
> +	{ MT6660_REG_RESV17, 2 },
> +	{ MT6660_REG_RESV23, 2 },
> +	{ MT6660_REG_SIGMAX, 2 },
> +	{ MT6660_REG_DEVID, 2},
> +	{ MT6660_REG_TDM_CFG3, 2},
> +	{ MT6660_REG_HCLIP_CTRL, 2},
> +	{ MT6660_REG_DA_GAIN, 2},
> +};

Please talk to your hardware designers about the benefits of consistent
register sizes :/

> +static int32_t mt6660_i2c_update_bits(struct mt6660_chip *chip,
> +	uint32_t addr, uint32_t mask, uint32_t data)
> +{

It would be good to implement a regmap rather than open coding
*everything* - it'd give you things like this without needing to open
code them.  Providing you don't use the cache code it should cope fine
with variable register sizes.

> +
> +static int mt6660_i2c_init_setting(struct mt6660_chip *chip)
> +{
> +	int i, len, ret;
> +	const struct codec_reg_val *init_table;
> +
> +	init_table = e4_reg_inits;
> +	len = ARRAY_SIZE(e4_reg_inits);
> +
> +	for (i = 0; i < len; i++) {
> +		ret = mt6660_i2c_update_bits(chip, init_table[i].addr,
> +				init_table[i].mask, init_table[i].data);
> +		if (ret < 0)
> +			return ret;

Why are we not using the chip defaults here?

> +static int mt6660_chip_power_on(
> +	struct snd_soc_component *component, int on_off)
> +{
> +	struct mt6660_chip *chip = (struct mt6660_chip *)
> +		snd_soc_component_get_drvdata(component);
> +	int ret = 0;
> +	unsigned int val;
> +
> +	dev_dbg(component->dev, "%s: on_off = %d\n", __func__, on_off);
> +	mutex_lock(&chip->var_lock);
> +	if (on_off) {
> +		if (chip->pwr_cnt == 0) {
> +			ret = mt6660_i2c_update_bits(chip,
> +				MT6660_REG_SYSTEM_CTRL, 0x01, 0x00);
> +			val = mt6660_i2c_read(chip, MT6660_REG_IRQ_STATUS1);
> +			dev_info(chip->dev,
> +				"%s reg0x05 = 0x%x\n", __func__, val);
> +		}
> +		chip->pwr_cnt++;

This looks like you're open coding runtime PM stuff?  AFAICT the issue
is that you need to write to this register to do any I/O.  Just
implement this via the standard runtime PM framework, you'll need to do
something about the register I/O in the controls (ideally in the
framework, it'd be a lot easier if you did have a cache) but you could
cut out this bit.

> +static int mt6660_component_set_bias_level(struct snd_soc_component *component,
> +	enum snd_soc_bias_level level)
> +{
> +	struct snd_soc_dapm_context *dapm =
> +		snd_soc_component_get_dapm(component);
> +	int ret;
> +	unsigned int val;
> +	struct mt6660_chip *chip = snd_soc_component_get_drvdata(component);
> +
> +	if (dapm->bias_level == level) {
> +		dev_warn(component->dev, "%s: repeat level change\n", __func__);

This shouldn't be a warning.

> +static const struct snd_kcontrol_new mt6660_component_snd_controls[] = {
> +	SOC_SINGLE_EXT_TLV("Volume_Ctrl", MT6660_REG_VOL_CTRL, 0, 255,
> +			   1, snd_soc_get_volsw, mt6660_component_put_volsw,
> +			   vol_ctl_tlv),
> +	SOC_SINGLE_EXT("WDT_Enable", MT6660_REG_WDT_CTRL, 7, 1, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),

These control names should all use standard ALSA control names - on/off
switches should end in Switch, volume controls in Volume.

> +	SOC_SINGLE_EXT("I2SLRS", MT6660_REG_DATAO_SEL, 6, 3, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("I2SDOLS", MT6660_REG_DATAO_SEL, 3, 7, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),
> +	SOC_SINGLE_EXT("I2SDORS", MT6660_REG_DATAO_SEL, 0, 7, 0,
> +		       snd_soc_get_volsw, mt6660_component_put_volsw),

What do these controls do?

--UHN/qo2QbUvPLonB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1ulwQACgkQJNaLcl1U
h9DsxAf8DiH9juppC2atx8j+pwupdXbxOIeEil91IOqQMEBBSSJ1oa1nPDIz1HkH
yJY7jq4QIijIkqA0b5Op3zEXSHIve3j3ZoUnN/Wrj6ODeyzrDXSvsDm/gB2/G3xJ
AQYMGCGEaL3i0OmnFBf3LKCqG/FceKjOmg7QqcuNMGqLkdHdwiNMguc+5QkuSamM
dvb3ZKnicrimjhMSocpe38qRFfcld4gJp6psfeDIQ8z2A1V8dtiNNrAbza/ArDUB
kfUE1VkdWMTs1kOrjrTZl067ZzOTLBbSiulfxzDtM1UjB3LSteshyCkoVI5K+QBW
qJJLfLqnH76e09UCIYvXbbV1J/oeRw==
=1Pf1
-----END PGP SIGNATURE-----

--UHN/qo2QbUvPLonB--


--===============4408966299675440704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============4408966299675440704==--

