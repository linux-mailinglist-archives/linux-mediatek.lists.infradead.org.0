Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CFB1C6A1
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 May 2019 12:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v44WPWyaV+p0NezyKJDwGZ7xIj7vHsDm3Iz9SEhe2zk=; b=adBNS62x9kYMg7
	BKWcr8GUUZVIAeYCeyOZsxccdTEyVcCSudYx6WyZ4GzRbw2AFmQFcrOIZK8/GvNuDMJ7z34J1HXSJ
	E+6N6cIg8ELeAM6xMJDnPURCtPo8GxVMQlzDWokJesCWjGET9in7vtovN3uz8djPD8rK9sCeDAJ7M
	5ihfgQN3cJPW0aQ/n4NdgLM9DgZ4ym4W647fxvUgDwlwXclEgv++2R4xmWDI7A3XCKBd9jpi9PF/W
	3x5RTTvQ0Y/JZIuI9J8OnZoW8vtlJvsc19vB/qBqoMSaT+oawuaoTDk9QOku3BJZ+NaG4aJ2ZHV6G
	Rp5Lme4PTNkJWLxHg6Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQUJd-0000jc-0b; Tue, 14 May 2019 10:05:45 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUJZ-0000dR-Fl
 for linux-mediatek@lists.infradead.org; Tue, 14 May 2019 10:05:43 +0000
X-UUID: 829374c2a5b64e0ca1f10b66d2c7c884-20190514
X-UUID: 829374c2a5b64e0ca1f10b66d2c7c884-20190514
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <lecopzer.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 431271080; Tue, 14 May 2019 02:05:30 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 03:05:29 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 18:05:27 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 14 May 2019 18:05:27 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <sre@kernel.org>, <linux-pm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <lecopzer.chen@mediatek.com>
Subject: [PATCH] test_power: Add CURRENT and CHARGE_COUNTER properties
Date: Tue, 14 May 2019 18:04:58 +0800
Message-ID: <1557828298-16591-1-git-send-email-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_030541_530812_957C8342 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: yj.chiang@mediatek.com, linux-mediatek@lists.infradead.org,
 srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "Lecopzer Chen" <lecopzer.chen@mediatek.com>

Emulate battery current (variable) and battery CHARGE_COUNTER
(same as battery_capacity) properties.

Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
Cc: YJ Chiang <yj.chiang@mediatek.com>

---
 drivers/power/supply/test_power.c | 33 +++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/power/supply/test_power.c b/drivers/power/supply/test_power.c
index 57246cdbd042..9f85060c84de 100644
--- a/drivers/power/supply/test_power.c
+++ b/drivers/power/supply/test_power.c
@@ -36,6 +36,7 @@ static int battery_present		= 1; /* true */
 static int battery_technology		= POWER_SUPPLY_TECHNOLOGY_LION;
 static int battery_capacity		= 50;
 static int battery_voltage		= 3300;
+static int battery_current		= 1600;
 
 static bool module_initialized;
 
@@ -101,6 +102,7 @@ static int test_power_get_battery_property(struct power_supply *psy,
 		break;
 	case POWER_SUPPLY_PROP_CAPACITY:
 	case POWER_SUPPLY_PROP_CHARGE_NOW:
+	case POWER_SUPPLY_PROP_CHARGE_COUNTER:
 		val->intval = battery_capacity;
 		break;
 	case POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN:
@@ -117,6 +119,10 @@ static int test_power_get_battery_property(struct power_supply *psy,
 	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
 		val->intval = battery_voltage;
 		break;
+	case POWER_SUPPLY_PROP_CURRENT_AVG:
+	case POWER_SUPPLY_PROP_CURRENT_NOW:
+		val->intval = battery_current;
+		break;
 	default:
 		pr_info("%s: some properties deliberately report errors.\n",
 			__func__);
@@ -138,6 +144,7 @@ static enum power_supply_property test_power_battery_props[] = {
 	POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN,
 	POWER_SUPPLY_PROP_CHARGE_FULL,
 	POWER_SUPPLY_PROP_CHARGE_NOW,
+	POWER_SUPPLY_PROP_CHARGE_COUNTER,
 	POWER_SUPPLY_PROP_CAPACITY,
 	POWER_SUPPLY_PROP_CAPACITY_LEVEL,
 	POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG,
@@ -147,6 +154,8 @@ static enum power_supply_property test_power_battery_props[] = {
 	POWER_SUPPLY_PROP_SERIAL_NUMBER,
 	POWER_SUPPLY_PROP_TEMP,
 	POWER_SUPPLY_PROP_VOLTAGE_NOW,
+	POWER_SUPPLY_PROP_CURRENT_AVG,
+	POWER_SUPPLY_PROP_CURRENT_NOW,
 };
 
 static char *test_power_ac_supplied_to[] = {
@@ -450,6 +459,21 @@ static int param_set_battery_voltage(const char *key,
 
 #define param_get_battery_voltage param_get_int
 
+static int param_set_battery_current(const char *key,
+					const struct kernel_param *kp)
+{
+	int tmp;
+
+	if (1 != sscanf(key, "%d", &tmp))
+		return -EINVAL;
+
+	battery_current = tmp;
+	signal_power_supply_changed(test_power_supplies[TEST_BATTERY]);
+	return 0;
+}
+
+#define param_get_battery_current param_get_int
+
 static const struct kernel_param_ops param_ops_ac_online = {
 	.set = param_set_ac_online,
 	.get = param_get_ac_online,
@@ -490,6 +514,11 @@ static const struct kernel_param_ops param_ops_battery_voltage = {
 	.get = param_get_battery_voltage,
 };
 
+static const struct kernel_param_ops param_ops_battery_current = {
+	.set = param_set_battery_current,
+	.get = param_get_battery_current,
+};
+
 #define param_check_ac_online(name, p) __param_check(name, p, void);
 #define param_check_usb_online(name, p) __param_check(name, p, void);
 #define param_check_battery_status(name, p) __param_check(name, p, void);
@@ -498,6 +527,7 @@ static const struct kernel_param_ops param_ops_battery_voltage = {
 #define param_check_battery_health(name, p) __param_check(name, p, void);
 #define param_check_battery_capacity(name, p) __param_check(name, p, void);
 #define param_check_battery_voltage(name, p) __param_check(name, p, void);
+#define param_check_battery_current(name, p) __param_check(name, p, void);
 
 
 module_param(ac_online, ac_online, 0644);
@@ -528,6 +558,9 @@ MODULE_PARM_DESC(battery_capacity, "battery capacity (percentage)");
 module_param(battery_voltage, battery_voltage, 0644);
 MODULE_PARM_DESC(battery_voltage, "battery voltage (millivolts)");
 
+module_param(battery_current, battery_current, 0644);
+MODULE_PARM_DESC(battery_current, "battery current (milliampere)");
+
 MODULE_DESCRIPTION("Power supply driver for testing");
 MODULE_AUTHOR("Anton Vorontsov <cbouatmailru@gmail.com>");
 MODULE_LICENSE("GPL");
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
